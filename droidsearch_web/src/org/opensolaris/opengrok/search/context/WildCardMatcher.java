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
 * Copyright (c) 2005, 2010, Oracle and/or its affiliates. All rights reserved.
 */

package org.opensolaris.opengrok.search.context;

import org.apache.lucene.search.WildcardTermEnum;

public class WildCardMatcher extends LineMatcher {
    final String pattern;

    public WildCardMatcher(String pattern, boolean caseInsensitive) {
        super(caseInsensitive);
        this.pattern = normalizeString(pattern);
    }

    @Override
    public int match(String token) {
        String tokenToMatch = normalizeString(token);
        return WildcardTermEnum.wildcardEquals(pattern, 0, tokenToMatch, 0)
            ? MATCHED
            : NOT_MATCHED;
    }
}
