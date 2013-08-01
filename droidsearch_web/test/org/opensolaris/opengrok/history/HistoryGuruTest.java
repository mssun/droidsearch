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
 * Copyright 2008 Sun Microsystems, Inc.  All rights reserved.
 * Use is subject to license terms.
 */
package org.opensolaris.opengrok.history;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import org.opensolaris.opengrok.configuration.RuntimeEnvironment;
import org.opensolaris.opengrok.util.FileUtilities;
import org.opensolaris.opengrok.util.TestRepository;
import static org.junit.Assert.*;

/**
 * Test the functionality provided by the HistoryGuru (with friends)
 * @author Trond Norbye
 */
public class HistoryGuruTest {

    private static TestRepository repository = new TestRepository();
    private static List<File> files = new ArrayList<File>();

    public HistoryGuruTest() {
    }

    @BeforeClass
    public static void setUpClass() throws Exception {
        repository = new TestRepository();
        repository.create(HistoryGuru.class.getResourceAsStream("repositories.zip"));
        FileUtilities.getAllFiles(new File(repository.getSourceRoot()), files, true);
        RuntimeEnvironment.getInstance().setVerbose(true);
    }

    @AfterClass
    public static void tearDownClass() throws Exception {
        repository.destroy();
    }

    @Before
    public void setUp() throws IOException {
    }

    @After
    public void tearDown() {
    }

    @Test
    public void testGetInstance() {
        assertNotNull(HistoryGuru.getInstance());
    }

    @Test
    public void testAddRepositories() throws IOException {
        HistoryGuru instance = HistoryGuru.getInstance();
        instance.addRepositories(repository.getSourceRoot());
    }

    @Test
    public void testCreateCache() {
        HistoryGuru instance = HistoryGuru.getInstance();
        instance.createCache();
        Collection<String> repos = new ArrayList<String>();
        repos.add("git");
        repos.add("bazaar");
        repos.add("mercurial");
        repos.add("teamware");
        repos.add("rcs");
        repos.add("nonexistent");
        instance.createCache(repos);
    }

    @Test
    public void testUpdateRepositories() {
        HistoryGuru instance = HistoryGuru.getInstance();
        instance.updateRepositories();
    }

    @Test
    public void getRevision() throws HistoryException, IOException {
        HistoryGuru instance = HistoryGuru.getInstance();
        for (File f : files) {
            if (f.isFile() && instance.hasHistory(f)) {
                for (HistoryEntry entry :
                        instance.getHistory(f).getHistoryEntries()) {
                    String revision = entry.getRevision();
                    InputStream in = instance.getRevision(
                            f.getParent(), f.getName(), revision);
                    assertNotNull("Failed to get revision " + revision +
                            " of " + f.getAbsolutePath(), in);
                    in.close();
                }
            }
        }
    }

    @Test
    public void bug16465() throws HistoryException, IOException {
        HistoryGuru instance = HistoryGuru.getInstance();
        for (File f : files) {
            if (f.getName().equals("bugreport16465@")) {
                assertNotNull(instance.getHistory(f));
                assertNotNull(instance.annotate(f, null));
            }
        }
    }

    @Test
    public void annotation() throws Exception {
        HistoryGuru instance = HistoryGuru.getInstance();
        for (File f : files) {
            if (instance.hasAnnotation(f)) {
                instance.annotate(f, null);
            }
        }
    }

    @Test
    public void getCacheInfo() throws HistoryException {
        // FileHistoryCache is used by default
        assertEquals("FileHistoryCache",
                HistoryGuru.getInstance().getCacheInfo());
    }
}
