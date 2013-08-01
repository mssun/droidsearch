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
package org.opensolaris.opengrok.configuration;

import java.beans.XMLDecoder;
import java.beans.XMLEncoder;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.InetAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.SocketAddress;
import java.net.UnknownHostException;
import java.util.Date;
import java.util.List;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;

import org.opensolaris.opengrok.OpenGrokLogger;
import org.opensolaris.opengrok.history.HistoryGuru;
import org.opensolaris.opengrok.history.RepositoryInfo;
import org.opensolaris.opengrok.index.Filter;
import org.opensolaris.opengrok.index.IgnoredNames;
import org.opensolaris.opengrok.util.Executor;
import org.opensolaris.opengrok.util.IOUtils;

/**
 * The RuntimeEnvironment class is used as a placeholder for the current
 * configuration this execution context (classloader) is using.
 */
public final class RuntimeEnvironment {
    private Configuration configuration;
    private final ThreadLocal<Configuration> threadConfig;

    private static final Logger log = Logger.getLogger(RuntimeEnvironment.class.getName());

    private static RuntimeEnvironment instance = new RuntimeEnvironment();

    /**
     * Get the one and only instance of the RuntimeEnvironment
     * @return the one and only instance of the RuntimeEnvironment
     */
    public static RuntimeEnvironment getInstance() {
        return instance;
    }

    /**
     * Creates a new instance of RuntimeEnvironment. Private to ensure a
     * singleton pattern.
     */
    private RuntimeEnvironment() {
        configuration = new Configuration();
        threadConfig = new ThreadLocal<Configuration>() {
            @Override protected Configuration initialValue() {
                return configuration;
            }
        };
    }

    private String getCanonicalPath(String s) {
        try {
            File file = new File(s);
            if (!file.exists()) {
                return s;
            }
            return file.getCanonicalPath();
        } catch (IOException ex) {
            OpenGrokLogger.getLogger().log(Level.SEVERE, "Failed to get canonical path", ex);
            return s;
        }
    }

    public int getScanningDepth() {
        return threadConfig.get().getScanningDepth();
    }

    public void setScanningDepth(int scanningDepth) {
        threadConfig.get().setScanningDepth(scanningDepth);
    }

    /**
     * Get the path to the where the index database is stored
     * @return the path to the index database
     */
    public String getDataRootPath() {
        return threadConfig.get().getDataRoot();
    }

    /**
     * Get a file representing the index database
     * @return the index database
     */
    public File getDataRootFile() {
        File ret  = null;
        String file = getDataRootPath();
        if (file != null) {
            ret = new File(file);
        }

        return ret;
    }

    /**
     * Set the path to where the index database is stored
     * @param dataRoot the index database
     */
    public void setDataRoot(String dataRoot) {
        threadConfig.get().setDataRoot(getCanonicalPath(dataRoot));
    }

    /**
     * Get the path to where the sources are located
     * @return path to where the sources are located
     */
    public String getSourceRootPath() {
        return threadConfig.get().getSourceRoot();
    }

    /**
     * Get a file representing the directory where the sources are located
     * @return A file representing the directory where the sources are located
     */
    public File getSourceRootFile() {
        File ret  = null;
        String file = getSourceRootPath();
        if (file != null) {
            ret = new File(file);
        }

        return ret;
    }

    /**
     * Specify the source root
     * @param sourceRoot the location of the sources
     */
    public void setSourceRoot(String sourceRoot) {
        threadConfig.get().setSourceRoot(getCanonicalPath(sourceRoot));
    }

    /**
     * Returns a path relative to source root. This would just be a simple
     * substring operation, except we need to support symlinks outside the
     * source root.
     * @param file A file to resolve
     * @param stripCount Number of characters past source root to strip
     * @throws IOException If an IO error occurs
     * @throws FileNotFoundException If the file is not relative to source root
     * @return Path relative to source root
     */
    public String getPathRelativeToSourceRoot(File file, int stripCount) throws IOException {
        String canonicalPath = file.getCanonicalPath();
        String sourceRoot = getSourceRootPath();
        if (canonicalPath.startsWith(sourceRoot)) {
            return canonicalPath.substring(sourceRoot.length() + stripCount);
        }
        for (String allowedSymlink : getAllowedSymlinks()) {
            String allowedTarget = new File(allowedSymlink).getCanonicalPath();
            if (canonicalPath.startsWith(allowedTarget)) {
                return canonicalPath.substring(allowedTarget.length() + stripCount);
            }
        }
        throw new FileNotFoundException("Failed to resolve ["+canonicalPath+"] relative to source root ["+sourceRoot+"]");
    }

    /**
     * Do we have projects?
     * @return true if we have projects
     */
    public boolean hasProjects() {
        List<Project> proj = getProjects();
        return (proj != null && !proj.isEmpty());
    }

    /**
     * Get all of the projects
     * @return a list containing all of the projects (may be null)
     */
    public List<Project> getProjects() {
        return threadConfig.get().getProjects();
    }

    /**
     * Set the list of the projects
     * @param projects the list of projects to use
     */
    public void setProjects(List<Project> projects) {
        threadConfig.get().setProjects(projects);
    }

    /**
     * Register this thread in the thread/configuration map (so that all
     * subsequent calls to the RuntimeEnvironment from this thread will use
     * the same configuration
     * @return this instance
     */
    public RuntimeEnvironment register() {
        threadConfig.set(configuration);
        return this;
    }

    /**
     * Get the context name of the web application
     * @return the web applications context name
     */
    public String getUrlPrefix() {
        return threadConfig.get().getUrlPrefix();
    }

    /**
     * Set the web context name
     * @param urlPrefix the web applications context name
     */
    public void setUrlPrefix(String urlPrefix) {
        threadConfig.get().setUrlPrefix(urlPrefix);
    }

    /**
     * Get the name of the ctags program in use
     * @return the name of the ctags program in use
     */
    public String getCtags() {
        return threadConfig.get().getCtags();
    }

    /**
     * Specify the CTags program to use
     * @param ctags the ctags program to use
     */
    public void setCtags(String ctags) {
        threadConfig.get().setCtags(ctags);
    }

    public int getCachePages() {
        return threadConfig.get().getCachePages();
    }

    public void setCachePages(int cachePages) {
        threadConfig.get().setCachePages(cachePages);
    }

    public int getHitsPerPage() {
        return threadConfig.get().getHitsPerPage();
    }

    public void setHitsPerPage(int hitsPerPage) {
        threadConfig.get().setHitsPerPage(hitsPerPage);
    }

    /**
     * Validate that I have a Exuberant ctags program I may use
     * @return true if success, false otherwise
     */
    public boolean validateExuberantCtags() {
        boolean ret = true;
        Executor executor = new Executor(new String[] {getCtags(), "--version"});

        executor.exec(false);
        String output = executor.getOutputString();
        if (output == null || output.indexOf("Exuberant Ctags") == -1) {
            log.log(Level.SEVERE,"Error: No Exuberant Ctags found in PATH!\n" +
                    "(tried running " + "{0}" + ")\n" +
                    "Please use option -c to specify path to a good Exuberant Ctags program\n"+
                    "Or set it in java property org.opensolaris.opengrok.analysis.Ctags", getCtags());
            ret =  false;
        }

        return ret;
    }

    /**
     * Get the max time a SMC operation may use to avoid beeing cached
     * @return the max time
     */
    public int getHistoryReaderTimeLimit() {
        return threadConfig.get().getHistoryCacheTime();
    }

    /**
     * Specify the maximum time a SCM operation should take before it will
     * be cached (in ms)
     * @param historyReaderTimeLimit the max time in ms before it is cached
     */
    public void setHistoryReaderTimeLimit(int historyReaderTimeLimit) {
        threadConfig.get().setHistoryCacheTime(historyReaderTimeLimit);
    }

    /**
     * Is history cache currently enabled?
     * @return true if history cache is enabled
     */
    public boolean useHistoryCache() {
        return threadConfig.get().isHistoryCache();
    }

    /**
     * Specify if we should use history cache or not
     * @param useHistoryCache set false if you do not want to use history cache
     */
    public void setUseHistoryCache(boolean useHistoryCache) {
        threadConfig.get().setHistoryCache(useHistoryCache);
    }

    /**
     * Should the history cache be stored in a database instead of in XML
     * files?
     *
     * @return {@code true} if the cache should be stored in a database
     */
    public boolean storeHistoryCacheInDB() {
        return threadConfig.get().isHistoryCacheInDB();
    }

    /**
     * Set whether the history cache should be stored in a database.
     * @param store {@code true} if the cache should be stored in a database
     */
    public void setStoreHistoryCacheInDB(boolean store) {
        threadConfig.get().setHistoryCacheInDB(store);
    }

    /**
     * Should we generate HTML or not during the indexing phase
     * @return true if HTML should be generated during the indexing phase
     */
    public boolean isGenerateHtml() {
        return threadConfig.get().isGenerateHtml();
    }

    /**
     * Specify if we should generate HTML or not during the indexing phase
     * @param generateHtml set this to true to pregenerate HTML
     */
    public void setGenerateHtml(boolean generateHtml) {
        threadConfig.get().setGenerateHtml(generateHtml);
    }

    /**
     * Set if we should compress the xref files or not
     * @param compressXref set to true if the generated html files should be
     *                     compressed
     */
    public void setCompressXref(boolean compressXref) {
        threadConfig.get().setCompressXref(compressXref);
    }

    /**
     * Are we using compressed HTML files?
     * @return {@code true} if the html-files should be compressed.
     */
    public boolean isCompressXref() {
        return threadConfig.get().isCompressXref();
    }

    public boolean isQuickContextScan() {
        return threadConfig.get().isQuickContextScan();
    }

    public void setQuickContextScan(boolean quickContextScan) {
        threadConfig.get().setQuickContextScan(quickContextScan);
    }

    public List<RepositoryInfo> getRepositories() {
        return threadConfig.get().getRepositories();
    }

    /**
     * Set the map of external SCM repositories
     * @param repositories the repositories to use
     */
    public void setRepositories(List<RepositoryInfo> repositories) {
        threadConfig.get().setRepositories(repositories);
    }

    /**
     * Set the project that is specified to be the default project to use. The
     * default project is the project you will search (from the web application)
     * if the page request didn't contain the cookie..
     * @param defaultProject The default project to use
     */
    public void setDefaultProject(Project defaultProject) {
        threadConfig.get().setDefaultProject(defaultProject);
    }

    /**
     * Get the project that is specified to be the default project to use. The
     * default project is the project you will search (from the web application)
     * if the page request didn't contain the cookie..
     * @return the default project (may be null if not specified)
     */
    public Project getDefaultProject() {
        return threadConfig.get().getDefaultProject();
    }

    /**
     * Chandan wrote the following answer on the opengrok-discuss list:
     * "Traditionally search engines (specially spiders) think that large files
     * are junk. Large files tend to be multimedia files etc., which text
     * search spiders do not want to chew. So they ignore the contents of
     * the file after a cutoff length. Lucene does this by number of words,
     * which is by default is 10,000."
     * By default OpenGrok will increase this limit to 60000, but it may be
     * overridden in the configuration file
     * @return The maximum words to index
     */
    public int getIndexWordLimit() {
        return threadConfig.get().getIndexWordLimit();
    }

    /**
     * Set the number of words in a file Lucene will index.
     * See getIndexWordLimit for a better description.
     * @param indexWordLimit the number of words to index in a single file
     */
    public void setIndexWordLimit(int indexWordLimit) {
        threadConfig.get().setIndexWordLimit(indexWordLimit);
    }

    /**
     * Is the verbosity flag turned on?
     * @return true if we can print extra information
     */
    public boolean isVerbose() {
        return threadConfig.get().isVerbose();
    }

    /**
     * Set the verbosity flag (to add extra debug information in output)
     * @param verbose new value
     */
    public void setVerbose(boolean verbose) {
        threadConfig.get().setVerbose(verbose);
    }

        /**
     * Is the progress print flag turned on?
     * @return true if we can print per project progress %
     */
    public boolean isPrintProgress() {
        return threadConfig.get().isPrintProgress();
    }

    /**
     * Set the printing of progress % flag (user convenience)
     * @param printP new value
     */
    public void setPrintProgress(boolean printP) {
        threadConfig.get().setPrintProgress(printP);
    }

    /**
     * Specify if a search may start with a wildcard. Note that queries
     * that start with a wildcard will give a significant impact on the
     * search performace.
     * @param allowLeadingWildcard set to true to activate (disabled by default)
     */
    public void setAllowLeadingWildcard(boolean allowLeadingWildcard) {
        threadConfig.get().setAllowLeadingWildcard(allowLeadingWildcard);
    }

    /**
     * Is leading wildcards allowed?
     * @return true if a search may start with a wildcard
     */
    public boolean isAllowLeadingWildcard() {
        return threadConfig.get().isAllowLeadingWildcard();
    }

    public IgnoredNames getIgnoredNames() {
        return threadConfig.get().getIgnoredNames();
    }

    public void setIgnoredNames(IgnoredNames ignoredNames) {
        threadConfig.get().setIgnoredNames(ignoredNames);
    }

    public Filter getIncludedNames() {
        return threadConfig.get().getIncludedNames();
    }

    public void setIncludedNames(Filter includedNames) {
        threadConfig.get().setIncludedNames(includedNames);
    }

    /**
     * Returns the user page for the history listing
     * @return the URL string fragment preceeding the username
     */
    public String getUserPage() {
        return threadConfig.get().getUserPage();
    }

    /**
     * Get the client command to use to access the repository for the given
     * fully quallified classname.
     * @param clazzName name of the targeting class
     * @return {@code null} if not yet set, the client command otherwise.
     */
    public String getRepoCmd(String clazzName) {
        return threadConfig.get().getRepoCmd(clazzName);
    }

    /**
     * Set the client command to use to access the repository for the given
     * fully quallified classname.
     * @param clazzName name of the targeting class. If {@code null} this method
     *  does nothing.
     * @param cmd the client command to use. If {@code null} the corresponding
     *  entry for the given clazzName get removed.
     * @return the client command previously set, which might be {@code null}.
     */
    public String setRepoCmd(String clazzName, String cmd) {
        return threadConfig.get().setRepoCmd(clazzName, cmd);
    }

    /**
     * Sets the user page for the history listing
     * @param userPage the URL fragment preceeding the username from history
     */
    public void setUserPage(String userPage) {
        threadConfig.get().setUserPage(userPage);
    }

    /**
     * Returns the user page suffix for the history listing
     * @return the URL string fragment following the username
     */
    public String getUserPageSuffix() {
        return threadConfig.get().getUserPageSuffix();
    }

    /**
     * Sets the user page suffix for the history listing
     * @param userPageSuffix the URL fragment following the username from history
     */
    public void setUserPageSuffix(String userPageSuffix) {
        threadConfig.get().setUserPageSuffix(userPageSuffix);
    }

    /**
     * Returns the bug page for the history listing
     * @return the URL string fragment preceeding the bug ID
     */
    public String getBugPage() {
        return threadConfig.get().getBugPage();
    }

    /**
     * Sets the bug page for the history listing
     * @param bugPage the URL fragment preceeding the bug ID
     */
    public void setBugPage(String bugPage) {
        threadConfig.get().setBugPage(bugPage);
    }

    /**
     * Returns the bug regex for the history listing
     * @return the regex that is looked for in history comments
     */
    public String getBugPattern() {
        return threadConfig.get().getBugPattern();
    }

    /**
     * Sets the bug regex for the history listing
     * @param bugPattern the regex to search history comments
     */
    public void setBugPattern(String bugPattern) {
        threadConfig.get().setBugPattern(bugPattern);
    }


    /**
     * Returns the review(ARC) page for the history listing
     * @return the URL string fragment preceeding the review page ID
     */
    public String getReviewPage() {
        return threadConfig.get().getReviewPage();
    }

     /**
     * Sets the review(ARC) page for the history listing
     * @param reviewPage the URL fragment preceeding the review page ID
     */
    public void setReviewPage(String reviewPage) {
        threadConfig.get().setReviewPage(reviewPage);
    }

    /**
     * Returns the review(ARC) regex for the history listing
     * @return the regex that is looked for in history comments
     */
    public String getReviewPattern() {
        return threadConfig.get().getReviewPattern();
    }

    /**
     * Sets the review(ARC) regex for the history listing
     * @param reviewPattern the regex to search history comments
     */
    public void setReviewPattern(String reviewPattern) {
        threadConfig.get().setReviewPattern(reviewPattern);
    }

    public String getWebappLAF() {
        return threadConfig.get().getWebappLAF();
    }

    public void setWebappLAF(String laf) {
        threadConfig.get().setWebappLAF(laf);
    }

    public boolean isRemoteScmSupported() {
        return threadConfig.get().isRemoteScmSupported();
    }

    public void setRemoteScmSupported(boolean supported) {
        threadConfig.get().setRemoteScmSupported(supported);
    }

    public boolean isOptimizeDatabase() {
        return threadConfig.get().isOptimizeDatabase();
    }

    public void setOptimizeDatabase(boolean optimizeDatabase) {
        threadConfig.get().setOptimizeDatabase(optimizeDatabase);
    }

    public boolean isUsingLuceneLocking() {
        return threadConfig.get().isUsingLuceneLocking();
    }

    public void setUsingLuceneLocking(boolean useLuceneLocking) {
        threadConfig.get().setUsingLuceneLocking(useLuceneLocking);
    }

    public boolean isIndexVersionedFilesOnly() {
        return threadConfig.get().isIndexVersionedFilesOnly();
    }

    public void setIndexVersionedFilesOnly(boolean indexVersionedFilesOnly) {
        threadConfig.get().setIndexVersionedFilesOnly(indexVersionedFilesOnly);
    }

    public Date getDateForLastIndexRun() {
        return threadConfig.get().getDateForLastIndexRun();
    }

    public String getDatabaseDriver() {
        return threadConfig.get().getDatabaseDriver();
    }

    public void setDatabaseDriver(String databaseDriver) {
        threadConfig.get().setDatabaseDriver(databaseDriver);
    }

    public String getDatabaseUrl() {
        return threadConfig.get().getDatabaseUrl();
    }

    public void setDatabaseUrl(String databaseUrl) {
        threadConfig.get().setDatabaseUrl(databaseUrl);
    }

    public String getCTagsExtraOptionsFile() {
        return threadConfig.get().getCTagsExtraOptionsFile();
    }

    public void setCTagsExtraOptionsFile(String filename) {
        threadConfig.get().setCTagsExtraOptionsFile(filename);
    }

    public Set<String> getAllowedSymlinks() {
        return threadConfig.get().getAllowedSymlinks();
    }

    public void setAllowedSymlinks(Set<String> allowedSymlinks) {
        threadConfig.get().setAllowedSymlinks(allowedSymlinks);
    }

    /**
     * Return whether e-mail addresses should be obfuscated in the xref.
     */
    public boolean isObfuscatingEMailAddresses() {
        return threadConfig.get().isObfuscatingEMailAddresses();
    }

    /**
     * Set whether e-mail addresses should be obfuscated in the xref.
     */
    public void setObfuscatingEMailAddresses(boolean obfuscate) {
        threadConfig.get().setObfuscatingEMailAddresses(obfuscate);
    }

    /**
     * Should status.jsp print internal settings, like paths and database
     * URLs?
     *
     * @return {@code true} if status.jsp should show the configuration,
     * {@code false} otherwise
     */
    public boolean isChattyStatusPage() {
        return threadConfig.get().isChattyStatusPage();
    }

    /**
     * Set whether status.jsp should print internal settings.
     *
     * @param chatty {@code true} if internal settings should be printed,
     * {@code false} otherwise
     */
    public void setChattyStatusPage(boolean chatty) {
        threadConfig.get().setChattyStatusPage(chatty);
    }

    /**
     * Read an configuration file and set it as the current configuration.
     * @param file the file to read
     * @throws IOException if an error occurs
     */
    public void readConfiguration(File file) throws IOException {
        setConfiguration(Configuration.read(file));
    }

    /**
     * Write the current configuration to a file
     * @param file the file to write the configuration into
     * @throws IOException if an error occurs
     */
    public void writeConfiguration(File file) throws IOException {
        threadConfig.get().write(file);
    }

    /**
     * Write the current configuration to a socket
     * @param host the host address to receive the configuration
     * @param port the port to use on the host
     * @throws IOException if an error occurs
     */
    public void writeConfiguration(InetAddress host, int port) throws IOException {
        Socket sock = new Socket(host, port);
        XMLEncoder e = new XMLEncoder(sock.getOutputStream());
        e.writeObject(threadConfig.get());
        e.close();
        IOUtils.close(sock);
    }

    protected void writeConfiguration() throws IOException {
        writeConfiguration(configServerSocket.getInetAddress(), configServerSocket.getLocalPort());
    }

    public void setConfiguration(Configuration configuration) {
        this.configuration = configuration;
        register();
        HistoryGuru.getInstance().invalidateRepositories(configuration.getRepositories());
    }

    public Configuration getConfiguration() {
       return this.threadConfig.get();
    }

    private ServerSocket configServerSocket;

    /**
     * Try to stop the configuration listener thread
     */
    public void stopConfigurationListenerThread() {
        IOUtils.close(configServerSocket);
    }

    /**
     * Start a thread to listen on a socket to receive new configurations
     * to use.
     * @param endpoint The socket address to listen on
     * @return true if the endpoint was available (and the thread was started)
     */
    public boolean startConfigurationListenerThread(SocketAddress endpoint) {
        boolean ret = false;

        try {
            configServerSocket = new ServerSocket();
            configServerSocket.bind(endpoint);
            ret = true;
            final ServerSocket sock = configServerSocket;
            Thread t = new Thread(new Runnable() {
                @Override
                public void run() {
                    ByteArrayOutputStream bos = new ByteArrayOutputStream(1<<13);
                    while (!sock.isClosed()) {
                        Socket s = null;
                        BufferedInputStream in = null;
                        try {
                            s = sock.accept();
                            bos.reset();
                            log.log(Level.FINE, "OpenGrok: Got request from {0}",
                                s.getInetAddress().getHostAddress());
                            in = new BufferedInputStream(s.getInputStream());
                            byte[] buf = new byte[1024];
                            int len;
                            while ((len = in.read(buf)) != -1) {
                                bos.write(buf, 0, len);
                            }
                            buf = bos.toByteArray();
                            if (log.isLoggable(Level.FINE)) {
                                log.log(Level.FINE, "new config:" + new String(buf));
                            }
                            XMLDecoder d = new XMLDecoder(new ByteArrayInputStream(buf));
                            Object obj = d.readObject();
                            d.close();

                            if (obj instanceof Configuration) {
                                setConfiguration((Configuration)obj);
                                log.log(Level.INFO, "Configuration updated: {0}", configuration.getSourceRoot());
                            }
                        } catch (IOException e) {
                            log.log(Level.SEVERE, "Error reading config file: ",e);
                        } catch (RuntimeException e) {
                            log.log(Level.SEVERE, "Error parsing config file: ", e);
                        } finally {
                            IOUtils.close(s);
                            IOUtils.close(in);
                        }
                    }
                }
            });
            t.start();
        } catch (UnknownHostException ex) {
            log.log(Level.FINE,"Problem resolving sender: ",ex);
        } catch (IOException ex) {
            log.log(Level.FINE,"I/O error when waiting for config: ",ex);
        }

        if (!ret && configServerSocket != null) {
            IOUtils.close(configServerSocket);
        }

        return ret;
    }
}
