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
 * Copyright (c) 2008, 2011, Oracle and/or its affiliates. All rights reserved.
 */
package org.opensolaris.opengrok.history;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.Level;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.opensolaris.opengrok.OpenGrokLogger;
import org.opensolaris.opengrok.util.IOUtils;

/**
 * This class gives access to repositories built on top of SCCS (including
 * TeamWare).
 */
public class SCCSRepository extends Repository {
    private static final long serialVersionUID = 1L;
    /** The property name used to obtain the client command for this repository. */
    public static final String CMD_PROPERTY_KEY =
        "org.opensolaris.opengrok.history.SCCS";
    /** The command to use to access the repository if none was given explicitly */
    public static final String CMD_FALLBACK = "sccs";

    private Map<String, String> authors_cache;

    public SCCSRepository() {
        type = "SCCS";
        datePattern = "yy/MM/dd";
    }

    @Override
    public InputStream getHistoryGet(String parent, String basename, String rev) {
        try {
            File history = SCCSHistoryParser.getSCCSFile(parent, basename);
            ensureCommand(CMD_PROPERTY_KEY, CMD_FALLBACK);
            return SCCSget.getRevision(cmd, history, rev);
        } catch (FileNotFoundException ex) {
            return null;
        } catch (IOException ex) {
            OpenGrokLogger.getLogger().log(Level.WARNING,
                "An error occured while getting revision", ex);
            return null;
        }
    }

     /** Pattern used to extract revision from sccs get */
    private static final Pattern AUTHOR_PATTERN =
        Pattern.compile("^([\\d.]+)\\s+(\\S+)");

    private void getAuthors(File file) throws IOException {
        //System.out.println("Alloc Authors cache");
        authors_cache = new HashMap<String, String>();

        ArrayList<String> argv = new ArrayList<String>();
        ensureCommand(CMD_PROPERTY_KEY, CMD_FALLBACK);
        argv.add(cmd);
        argv.add("prs");
        argv.add("-e");
        argv.add("-d");
        argv.add(":I: :P:");
        argv.add(file.getCanonicalPath());

        ProcessBuilder pb = new ProcessBuilder(argv);
        pb.directory(file.getCanonicalFile().getParentFile());
        Process process = null;
        BufferedReader in = null;
        try {
            process = pb.start();
            in = new BufferedReader(new InputStreamReader(process.getInputStream()));
            String line;
            int lineno = 0;
            while ((line = in.readLine()) != null) {
                ++lineno;
                Matcher matcher = AUTHOR_PATTERN.matcher(line);
                if (matcher.find()) {
                    String rev = matcher.group(1);
                    String auth = matcher.group(2);
                    authors_cache.put(rev, auth);
                } else {
                    OpenGrokLogger.getLogger().log(Level.SEVERE,
                        "Error: did not find authors in line {0}: [{1}]",
                        new Object[]{lineno, line});
                }
            }
        } finally {
            IOUtils.close(in);

            if (process != null) {
                try {
                    process.exitValue();
                } catch (IllegalThreadStateException e) {
                    process.destroy();
                }
            }
        }
    }

    /** Pattern used to extract revision from sccs get */
    private static final Pattern ANNOTATION_PATTERN =
        Pattern.compile("^([\\d.]+)\\s+");

    /**
     * Annotate the specified file/revision.
     *
     * @param file file to annotate
     * @param revision revision to annotate
     * @return file annotation
     */
    @Override
    public Annotation annotate(File file, String revision) throws IOException {

        //System.out.println("annotating " + file.getCanonicalPath());
        getAuthors(file);

        ArrayList<String> argv = new ArrayList<String>();
        ensureCommand(CMD_PROPERTY_KEY, CMD_FALLBACK);
        argv.add(cmd);
        argv.add("get");
        argv.add("-m");
        argv.add("-p");
        if (revision != null) {
            argv.add("-r" + revision);
        }
        argv.add(file.getCanonicalPath());
        ProcessBuilder pb = new ProcessBuilder(argv);
        pb.directory(file.getCanonicalFile().getParentFile());
        Process process = null;
        BufferedReader in = null;
        try {
            process = pb.start();
            in = new BufferedReader(new InputStreamReader(process.getInputStream()));
            Annotation a = new Annotation(file.getName());
            String line;
            int lineno = 0;
            while ((line = in.readLine()) != null) {
                ++lineno;
                Matcher matcher = ANNOTATION_PATTERN.matcher(line);
                if (matcher.find()) {
                    String rev = matcher.group(1);
                    String author = authors_cache.get(rev);
                    if (author == null) {
                        author = "unknown";
                    }

                    a.addLine(rev, author, true);
                } else {
                    OpenGrokLogger.getLogger().log(Level.SEVERE,
                        "Error: did not find annotations in line {0}: [{1}]",
                        new Object[]{lineno, line});
                }
            }
            return a;
        } finally {
            IOUtils.close(in);
            if (process != null) {
                try {
                    process.exitValue();
                } catch (IllegalThreadStateException e) {
                    process.destroy();
                }
            }
        }
    }

    @Override
    public boolean fileHasAnnotation(File file) {
        return true;
    }

    @Override
    public void update() {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    @Override
    public boolean fileHasHistory(File file) {
        String parent = file.getParent();
        String name = file.getName();
        File f = new File(parent + "/SCCS/s." + name);
        if (f.exists()) {
            return true;
        }
        return false;
    }

    @Override
    boolean isRepositoryFor(File file) {
       if (file.isDirectory()) {
         File f = new File(file, "codemgr_wsdata");
         if (f.isDirectory()) {
             return true;
         }
         f = new File(file, "Codemgr_wsdata");
         if (f.isDirectory()) {
             return true;
         }
         return new File(file, "SCCS").isDirectory();
       }
       return false;
    }

    @Override
    public boolean isWorking() {
        if (working == null) {
            ensureCommand(CMD_PROPERTY_KEY, CMD_FALLBACK);
            working = checkCmd(cmd, "help", "help");
            if (!working.booleanValue()) {
                working = checkCmd(cmd, "--version");
            }
        }
        return working.booleanValue();
    }

    @Override
    boolean hasHistoryForDirectories() {
        return false;
    }

    @Override
    History getHistory(File file) throws HistoryException {
        return new SCCSHistoryParser().parse(file, this);
    }
}

