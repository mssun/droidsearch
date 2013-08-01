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
package org.opensolaris.opengrok.analysis;

import java.io.Reader;
import java.util.Set;
import org.apache.lucene.analysis.Analyzer;
import org.apache.lucene.analysis.StopFilter;
import org.apache.lucene.analysis.TokenStream;
import org.opensolaris.opengrok.analysis.plain.PlainFullTokenizer;
import org.opensolaris.opengrok.search.SearchEngine;

public final class HistoryAnalyzer extends Analyzer {
    private final Set<Object> stopWords;

    /** An array containing some common English words that are not usually useful
    for searching. */
    private static final String[] ENGLISH_STOP_WORDS = {
        "a", "an", "and", "are", "as", "at", "be", "but", "by",
        "for", "if", "in", "into", "is", "it",
        "no", "not", "of", "on", "or", "s", "such",
        "t", "that", "the", "their", "then", "there", "these",
        "they", "this", "to", "was", "will", "with",
        "/", "\\", ":",".","0.0", "1.0"
    };

    /** Builds an analyzer which removes words in ENGLISH_STOP_WORDS. */
    public HistoryAnalyzer() {
        stopWords = StopFilter.makeStopSet(SearchEngine.LUCENE_VERSION,ENGLISH_STOP_WORDS);
    }

    /** Builds an analyzer which removes words in the provided array. */
    public HistoryAnalyzer(String[] stopWords) {
        this.stopWords = StopFilter.makeStopSet(SearchEngine.LUCENE_VERSION,stopWords);
    }

    /** Filters LowerCaseTokenizer with StopFilter. */
    @Override
    public final TokenStream tokenStream(String fieldName, Reader reader) {
        //we are counting position increments, this might affect the queries later and need to be in sync, especially for highlighting of results
        return new StopFilter(SearchEngine.LUCENE_VERSION,new PlainFullTokenizer(reader), stopWords);
    }
    
    @Override
    public final TokenStream reusableTokenStream(String fieldName, Reader reader) {
        //TODO needs refactoring to get more speed and less ram usage for indexer
        return this.tokenStream(fieldName, reader);
    }
}
