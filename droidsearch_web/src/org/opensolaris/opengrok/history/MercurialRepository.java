/*
 * CDDL HEADER START
 *
 * The contents of this file are subject to the terms of the
 * Common Development and Distribution License (the "License").
 * You may not use this file except in compliance with the License.
 *
 * See LICENSE.txt included in this distribution for the specific
 * language governing permissions and limitations under the License.
 *
 * When distributing Covered Code, include this CDDL HEADER in each
 * file and include the License file at LICENSE.txt.
 * If applicable, add the following below this CDDL HEADER, with the
 * fields enclosed by brackets "[]" replaced with your own identifying
 * information: Portions Copyright [yyyy] [name of copyright owner]
 *
 * CDDL HEADER END
 */

/*
 * Copyright (c) 2006, 2012, Oracle and/or its affiliates. All rights reserved.
 */
package org.opensolaris.opengrok.history;

import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.logging.Level;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.opensolaris.opengrok.OpenGrokLogger;
import org.opensolaris.opengrok.util.Executor;
import org.opensolaris.opengrok.util.IOUtils;
import org.opensolaris.opengrok.web.Util;

/**
 * Access to a Mercurial repository.
 *
 */
public class MercurialRepository extends Repository {
    private static final long serialVersionUID = 1L;

    /** The property name used to obtain the client command for thisrepository. */
    public static final String CMD_PROPERTY_KEY =
        "org.opensolaris.opengrok.history.Mercurial";
    /** The command to use to access the repository if none was given explicitly */
    public static final String CMD_FALLBACK = "hg";

    /**
     * The boolean property and environment variable name to indicate
     * whether forest-extension in Mercurial adds repositories inside the
     * repositories.
     */
    public static final String NOFOREST_PROPERTY_KEY =
        "org.opensolaris.opengrok.history.mercurial.disableForest";

    /** Template for formatting hg log output for files. */
    private static final String TEMPLATE = "changeset: {rev}:{node|short}\\n"
        + "{branches}{tags}{parents}\\n"
        + "user: {author}\\ndate: {date|isodate}\\n"
        + "description: {desc|strip|obfuscate}\\n";

    /** Template for formatting hg log output for directories. */
    private static final String DIR_TEMPLATE = TEMPLATE
        + "files: {files}{file_copies}\\n";

    public MercurialRepository() {
        type = "Mercurial";
        datePattern = "yyyy-MM-dd hh:mm ZZZZ";
    }

    /**
     * Get an executor to be used for retrieving the history log for the
     * named file.
     *
     * @param file The file to retrieve history for
     * @param changeset the oldest changeset to return from the executor,
     * or {@code null} if all changesets should be returned
     * @return An Executor ready to be started
     */
    Executor getHistoryLogExecutor(File file, String changeset)
             throws HistoryException, IOException
    {
        String abs = file.getCanonicalPath();
        String filename = "";
        if (abs.length() > directoryName.length()) {
            filename = abs.substring(directoryName.length() + 1);
        }

        List<String> cmd = new ArrayList<String>();
        ensureCommand(CMD_PROPERTY_KEY, CMD_FALLBACK);
        cmd.add(this.cmd);
        cmd.add("log");
        if (!file.isDirectory()) { cmd.add("-f"); }

        if (changeset != null) {
            cmd.add("-r");
            String[] parts = changeset.split(":");
            if (parts.length == 2) {
                cmd.add("tip:" + parts[0]);
            } else {
                throw new HistoryException(
                        "Don't know how to parse changeset identifier: " +
                        changeset);
            }
        }

        cmd.add("--template");
        cmd.add(file.isDirectory() ? DIR_TEMPLATE : TEMPLATE);
        cmd.add(filename);

        return new Executor(cmd, new File(directoryName));
    }

    @Override
    public InputStream getHistoryGet(String parent, String basename, String rev)
    {
        InputStream ret = null;

        File directory = new File(directoryName);

        Process process = null;
        InputStream in = null;
        String revision = rev;

        if (rev.indexOf(':') != -1) {
            revision = rev.substring(0, rev.indexOf(':'));
        }
        try {
            String filename =  (new File(parent, basename)).getCanonicalPath()
                .substring(directoryName.length() + 1);
            ensureCommand(CMD_PROPERTY_KEY, CMD_FALLBACK);
            String argv[] = {cmd, "cat", "-r", revision, filename};
            process = Runtime.getRuntime().exec(argv, null, directory);

            ByteArrayOutputStream out = new ByteArrayOutputStream();
            byte[] buffer = new byte[32 * 1024];
            in = process.getInputStream();
            int len;

            while ((len = in.read(buffer)) != -1) {
                if (len > 0) {
                    out.write(buffer, 0, len);
                }
            }

            ret = new ByteArrayInputStream(out.toByteArray());
        } catch (Exception exp) {
            OpenGrokLogger.getLogger().log(Level.SEVERE,
                "Failed to get history: " + exp.getClass().toString());
        } finally {
            IOUtils.close(in);
            // Clean up zombie-processes...
            if (process != null) {
                try {
                    process.exitValue();
                } catch (IllegalThreadStateException exp) {
                    // the process is still running??? just kill it..
                    process.destroy();
                }
            }
        }

        return ret;
    }

    /** Pattern used to extract author/revision from hg annotate. */
    private static final Pattern ANNOTATION_PATTERN =
        Pattern.compile("^\\s*(\\d+):");

    /**
     * Annotate the specified file/revision.
     *
     * @param file file to annotate
     * @param revision revision to annotate
     * @return file annotation
     */
    @Override
    public Annotation annotate(File file, String revision) throws IOException {
        ArrayList<String> argv = new ArrayList<String>();
        ensureCommand(CMD_PROPERTY_KEY, CMD_FALLBACK);
        argv.add(cmd);
        argv.add("annotate");
        argv.add("-n");
        if (revision != null) {
            argv.add("-r");
            if (revision.indexOf(':') == -1) {
                argv.add(revision);
            } else {
                argv.add(revision.substring(0, revision.indexOf(':')));
            }
        }
        argv.add(file.getName());
        ProcessBuilder pb = new ProcessBuilder(argv);
        pb.directory(file.getParentFile());
        Process process = null;
        BufferedReader in = null;
        Annotation ret = null;
        HashMap<String,HistoryEntry> revs = new HashMap<String,HistoryEntry>();

        // Construct hash map for history entries from history cache. This is
        // needed later to get user string for particular revision.
        try {
            History hist = HistoryGuru.getInstance().getHistory(file, false);
            for (HistoryEntry e : hist.getHistoryEntries()) {
                // Chop out the colon and all hexadecimal what follows.
                // This is because the whole changeset identification is
                // stored in history index while annotate only needs the
                // revision identifier.
                revs.put(e.getRevision().replaceFirst(":[a-f0-9]+", ""), e);
            }
        } catch (HistoryException he) {
            OpenGrokLogger.getLogger().log(Level.SEVERE,
                "Error: cannot get history for file " + file);
            return null;
        }

        try {
            process = pb.start();
            in = new BufferedReader(new InputStreamReader(process.getInputStream()));
            ret = new Annotation(file.getName());
            String line;
            int lineno = 0;
            Matcher matcher = ANNOTATION_PATTERN.matcher("");
            while ((line = in.readLine()) != null) {
                ++lineno;
                matcher.reset(line);
                if (matcher.find()) {
                    String rev = matcher.group(1);
                    String author = "N/A";
                    // Use the history index hash map to get the author.
                    if (revs.get(rev) != null) {
                         author = revs.get(rev).getAuthor();
                    }
                    ret.addLine(rev, Util.getEmail(author.trim()), true);
                } else {
                    OpenGrokLogger.getLogger().log(Level.SEVERE,
                        "Error: did not find annotation in line "
                        + lineno + ": [" + line + "]");
                }
            }
        } finally {
            IOUtils.close(in);
            if (process != null) {
                try {
                    process.exitValue();
                } catch (IllegalThreadStateException e) {
                    // the process is still running??? just kill it..
                    process.destroy();
                }
            }
        }
        return ret;
    }

    @Override
    public boolean fileHasAnnotation(File file) {
        return true;
    }

    @Override
    public void update() throws IOException {
        File directory = new File(directoryName);

        List<String> cmd = new ArrayList<String>();
        ensureCommand(CMD_PROPERTY_KEY, CMD_FALLBACK);
        cmd.add(this.cmd);
        cmd.add("showconfig");
        Executor executor = new Executor(cmd, directory);
        if (executor.exec() != 0) {
            throw new IOException(executor.getErrorString());
        }

        if (executor.getOutputString().indexOf("paths.default=") != -1) {
            cmd.clear();
            cmd.add(this.cmd);
            cmd.add("pull");
            cmd.add("-u");
            executor = new Executor(cmd, directory);
            if (executor.exec() != 0) {
                throw new IOException(executor.getErrorString());
            }
        }
    }

    @Override
    public boolean fileHasHistory(File file) {
        // Todo: is there a cheap test for whether mercurial has history
        // available for a file?
        // Otherwise, this is harmless, since mercurial's commands will just
        // print nothing if there is no history.
        return true;
    }

    @Override
    boolean isRepositoryFor(File file) {
        if (file.isDirectory()) {
            File f = new File(file, ".hg");
            return f.exists() && f.isDirectory();
        }
        return false;
    }

    @Override
    boolean supportsSubRepositories() {
        String val = System.getenv(NOFOREST_PROPERTY_KEY);
        return !(val == null
            ? Boolean.getBoolean(NOFOREST_PROPERTY_KEY)
            : Boolean.parseBoolean(val));
    }

    @Override
    public boolean isWorking() {
        if (working == null) {
            ensureCommand(CMD_PROPERTY_KEY, CMD_FALLBACK);
            working = checkCmd(cmd);
        }
        return working.booleanValue();
    }

    @Override
    boolean hasHistoryForDirectories() {
        return true;
    }

    @Override
    History getHistory(File file) throws HistoryException {
        return getHistory(file, null);
    }

    @Override
    History getHistory(File file, String sinceRevision)
            throws HistoryException {
        return new MercurialHistoryParser(this).parse(file, sinceRevision);
    }
}
