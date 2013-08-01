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
package org.opensolaris.opengrok.index;

import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.List;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import org.opensolaris.opengrok.analysis.AnalyzerGuru;
import org.opensolaris.opengrok.analysis.FileAnalyzerFactory;
import org.opensolaris.opengrok.configuration.Project;
import org.opensolaris.opengrok.configuration.RuntimeEnvironment;
import org.opensolaris.opengrok.history.HistoryGuru;
import org.opensolaris.opengrok.history.Repository;
import org.opensolaris.opengrok.history.RepositoryFactory;
import org.opensolaris.opengrok.history.RepositoryInfo;
import org.opensolaris.opengrok.util.Executor;
import org.opensolaris.opengrok.util.FileUtilities;
import org.opensolaris.opengrok.util.TestRepository;
import static org.junit.Assert.*;

/**
 *
 * @author Trond Norbye
 */
public class IndexerTest {
    TestRepository repository;

    public IndexerTest() {
    }

    @BeforeClass
    public static void setUpClass() throws Exception {
        assertTrue("No point in running indexer tests without valid ctags",
                RuntimeEnvironment.getInstance().validateExuberantCtags());
    }

    @AfterClass
    public static void tearDownClass() throws Exception {
    }

    @Before
    public void setUp() throws IOException {
        repository = new TestRepository();
        repository.create(IndexerTest.class.getResourceAsStream("source.zip"));
    }

    @After
    public void tearDown() {
        repository.destroy();
    }

    /**
     * Test of doIndexerExecution method, of class Indexer.
     */
    @Test
    public void testIndexGeneration() throws Exception {
        System.out.println("Generating index by using the class methods");
        RuntimeEnvironment env = RuntimeEnvironment.getInstance();
        env.setCtags(System.getProperty("org.opensolaris.opengrok.configuration.ctags", "ctags"));
        if (env.validateExuberantCtags()) {
            env.setSourceRoot(repository.getSourceRoot());
            env.setDataRoot(repository.getDataRoot());
            env.setVerbose(true);
            Indexer.getInstance().prepareIndexer(env, true, true, "/c", null, false, false, false, null, null, new ArrayList<String>(), false);
            Indexer.getInstance().doIndexerExecution(true, 1, null, null);
        } else {
            System.out.println("Skipping test. Could not find a ctags I could use in path.");
        }
    }

    /**
     * Test that rescanning for projects does not erase customization of
     * existing projects. Bug #16006.
     */
    @Test
    public void testRescanProjects() throws Exception {
        // Generate one project that will be found in source.zip, and set
        // some properties that we can verify after the rescan.
        Project p1 = new Project();
        p1.setPath("/java");
        p1.setDescription("Project 1");
        p1.setTabSize(3);

        // Generate one project that will not be found in source.zip, and that
        // should not be in the list of projects after the rescan.
        Project p2 = new Project();
        p2.setPath("/this_path_does_not_exist");
        p2.setDescription("Project 2");

        // Make the runtime environment aware of these two projects.
        List<Project> projects = new ArrayList<Project>();
        projects.add(p1);
        projects.add(p2);
        RuntimeEnvironment env = RuntimeEnvironment.getInstance();
        env.setProjects(projects);

        // Do a rescan of the projects, and only that (we don't care about
        // the other aspects of indexing in this test case).
        Indexer.getInstance().prepareIndexer(
                env,
                false, // don't search for repositories
                true,  // scan and add projects
                null,  // no default project
                null,  // don't write config file
                false, // don't refresh history
                false, // don't list files
                false, // don't create dictionary
                null,  // subFiles - not needed since we don't list files
                null,   // repositories - not needed when not refreshing history
                new ArrayList<String>(),   // don't zap cache
                false); // don't list repos

        List<Project> newProjects = env.getProjects();

        // p2 should not be in the project list anymore
        for (Project p : newProjects) {
            assertFalse("p2 not removed", p.getPath().equals(p2.getPath()));
        }

        // p1 should be there
        Project newP1 = null;
        for (Project p : newProjects) {
            if (p.getPath().equals(p1.getPath())) {
                newP1 = p;
                break;
            }
        }
        assertNotNull("p1 not in list", newP1);

        // The properties of p1 should be preserved
        assertEquals("project path", p1.getPath(), newP1.getPath());
        assertEquals("project description",
                     p1.getDescription(), newP1.getDescription());
        assertEquals("project tabsize", p1.getTabSize(), newP1.getTabSize());
    }

    /**
     * Test of doIndexerExecution method, of class Indexer.
     */
    @Test
    public void testMain() throws IOException {
        System.out.println("Generate index by using command line options");
        RuntimeEnvironment env = RuntimeEnvironment.getInstance();
        env.setCtags(System.getProperty("org.opensolaris.opengrok.configuration.ctags", "ctags"));
        if (env.validateExuberantCtags()) {
            String[] argv = {"-S", "-P", "-H", "-Q", "off", "-s", repository.getSourceRoot(), "-d", repository.getDataRoot(), "-v"};
            Indexer.main(argv);
        } else {
            System.out.println("Skipping test. Could not find a ctags I could use in path.");
        }
    }

    private class MyIndexChangeListener implements org.opensolaris.opengrok.index.IndexChangedListener {
        List<String> files = new ArrayList<String>();

        @Override
        public void fileAdd(String path, String analyzer) {            
        }

        @Override
        public void fileAdded(String path, String analyzer) {
            files.add(path);
        }

        @Override
        public void fileRemove(String path) {
        }
        @Override
        public void fileUpdate(String path) {
        }

        @Override
        public void fileRemoved(String path) {            
        }
    }

    @Test
    public void testRFE2575() throws Exception {
        RuntimeEnvironment env = RuntimeEnvironment.getInstance();
        env.setCtags(System.getProperty("org.opensolaris.opengrok.configuration.ctags", "ctags"));
        env.setSourceRoot(repository.getSourceRoot());
        env.setDataRoot(repository.getDataRoot());
        HistoryGuru.getInstance().addRepositories(repository.getSourceRoot());

        List<RepositoryInfo> repos = env.getRepositories();
        Repository r = null;
        for (RepositoryInfo ri : repos) {
            if (ri.getDirectoryName().equals(repository.getSourceRoot()+"/rfe2575")) {
                r = RepositoryFactory.getRepository(ri);
                break;
            }
        }
        
        if (r != null && r.isWorking() && env.validateExuberantCtags()) {
            Project project = new Project();
            project.setPath("/rfe2575");
            IndexDatabase idb = new IndexDatabase(project);
            assertNotNull(idb);
            MyIndexChangeListener listener = new MyIndexChangeListener();
            idb.addIndexChangedListener(listener);
            idb.update();
            assertEquals(2, listener.files.size());
            repository.purgeData();
            RuntimeEnvironment.getInstance().setIndexVersionedFilesOnly(true);
            idb = new IndexDatabase(project);
            listener = new MyIndexChangeListener();
            idb.addIndexChangedListener(listener);
            idb.update();
            assertEquals(1, listener.files.size());
            RuntimeEnvironment.getInstance().setIndexVersionedFilesOnly(false);
        } else {
            System.out.println("Skipping test. Repository for rfe2575 not found or could not find a ctags or an sccs I could use in path.");
        }
    }
    
    @Test
    public void testXref() throws IOException {
        List<File> files = new ArrayList<File>();
        FileUtilities.getAllFiles(new File(repository.getSourceRoot()), files, false);
        for (File f : files) {
            FileAnalyzerFactory factory = AnalyzerGuru.find(f.getAbsolutePath());
            if (factory == null) {
                continue;
            }
            FileReader in = new FileReader(f);
            StringWriter out = new StringWriter();
            try {
                AnalyzerGuru.writeXref(factory, in, out, null, null, null);
            } catch (UnsupportedOperationException exp) {
                // ignore
            }
            in.close();
            out.close();
        }
    }
    @Test
    public void testBug3430() throws Exception {
        RuntimeEnvironment env = RuntimeEnvironment.getInstance();
        env.setCtags(System.getProperty("org.opensolaris.opengrok.configuration.ctags", "ctags"));
        env.setSourceRoot(repository.getSourceRoot());
        env.setDataRoot(repository.getDataRoot());

        if (env.validateExuberantCtags()) {
            Project project = new Project();
            project.setPath("/bug3430");
            IndexDatabase idb = new IndexDatabase(project);
            assertNotNull(idb);
            MyIndexChangeListener listener = new MyIndexChangeListener();
            idb.addIndexChangedListener(listener);
            idb.update();
            assertEquals(1, listener.files.size());
        } else {
            System.out.println("Skipping test. Could not find a ctags I could use in path.");
        }
    }

    @Test
    public void testBug11896() throws Exception {

       boolean test = true;
       if (FileUtilities.findProgInPath("mkfifo") == null) {
           System.out.println("Error: mkfifo not found in PATH !\n");
           test = false;
       }

       if (test) {
        RuntimeEnvironment env = RuntimeEnvironment.getInstance();
        env.setSourceRoot(repository.getSourceRoot());
        env.setDataRoot(repository.getDataRoot());
        Executor executor;
        
        executor = new Executor(new String[] {"mkdir", "-p", repository.getSourceRoot()+"/testBug11896"});
        executor.exec(true);

        executor = new Executor(new String[] {"mkfifo", repository.getSourceRoot()+"/testBug11896/FIFO"});
        executor.exec(true);      

        if (env.validateExuberantCtags()) {
            Project project = new Project();
            project.setPath("/testBug11896");
            IndexDatabase idb = new IndexDatabase(project);
            assertNotNull(idb);
            MyIndexChangeListener listener = new MyIndexChangeListener();
            idb.addIndexChangedListener(listener);
            System.out.println("Trying to index a special file - FIFO in this case.");
            idb.update();
            assertEquals(0, listener.files.size());
        } else {
            System.out.println("Skipping test. Could not find a ctags I could use in path.");
        }
       } else {
            System.out.println("Skipping test for bug 11896. Could not find a mkfifo in path.");
       }
    }
}
