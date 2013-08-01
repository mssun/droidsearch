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
 * Copyright (c) 2008, 2012, Oracle and/or its affiliates. All rights reserved.
 */
package org.opensolaris.opengrok.util;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Enumeration;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import org.opensolaris.opengrok.configuration.RuntimeEnvironment;
import org.opensolaris.opengrok.index.IgnoredNames;
import static org.junit.Assert.*;

/**
 * Various filesystem utilities used by the different test setups
 *
 * @author Trond Norbye
 */
public class FileUtilities {

    public static void extractArchive(File sourceBundle, File root) throws IOException {
        ZipFile zipfile = new ZipFile(sourceBundle);

        Enumeration<? extends ZipEntry> e = zipfile.entries();

        while (e.hasMoreElements()) {
            ZipEntry ze = e.nextElement();
            File file = new File(root, ze.getName());
            if (ze.isDirectory()) {
                file.mkdirs();
            } else {
                InputStream in = zipfile.getInputStream(ze);
                assertNotNull(in);
                FileOutputStream out = new FileOutputStream(file);
                assertNotNull(out);
                copyFile(in, out);
            }
        }
    }

    public static void removeDirs(File root) {
        for (File f : root.listFiles()) {
            if (f.isDirectory()) {
                removeDirs(f);
            } else {
                f.delete();
            }
        }
        root.delete();
    }

    public static void copyFile(InputStream in, OutputStream out) throws IOException {
        byte[] array = new byte[8192];
        int nr;

        while ((nr = in.read(array)) > 0) {
            out.write(array, 0, nr);
        }
        out.flush();
    }


    public static void getAllFiles(File root, List<File> files, boolean directories) {
        assertNotNull(files);
        if (directories) {
            files.add(root);
        }

        IgnoredNames ignore = RuntimeEnvironment.getInstance().getIgnoredNames();

        for (File f : root.listFiles()) {
            if (!ignore.ignore(f)) {
                if (f.isDirectory()) {
                    getAllFiles(f, files, directories);
                } else {
                    files.add(f);
                }
            }
        }
    }

    /**
     * Create an empty directory under {@code /tmp} or similar.
     *
     * @param prefix string to prefix the directory name with
     * @return a {@code File} object pointing to the directory
     * @throws IOException if the temporary directory cannot be created
     */
    public static File createTemporaryDirectory(String prefix)
            throws IOException {
        File file = File.createTempFile(prefix, "opengrok");
        if (!file.delete()) {
            throw new IOException(
                    "Could not create delete temporary file " + file);
        }
        if (!file.mkdir()) {
            throw new IOException(
                    "Could not create temporary directory " + file);
        }
        return file;
    }

    private FileUtilities() {
    }

    /**
     * Determine if given program is present in one of the directories
     * in PATH environment variable.
     *
     * @param  progName name of the program
     * @return absolute path to the program or null
     */
    public static File findProgInPath(String progName) {
        String systemPath = System.getenv("PATH");
        if (systemPath == null) {
             return null;
        }

        String[] pathDirs = systemPath.split(File.pathSeparator);
        File absoluteFile = null;

        for (String dir : pathDirs) {
            File file = new File(dir, progName);
            if (file.isFile() && file.canExecute()) {
                absoluteFile = file;
                break;
            }
        }
        return absoluteFile;
    }
}
