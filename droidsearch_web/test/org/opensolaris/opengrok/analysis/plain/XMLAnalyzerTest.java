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

package org.opensolaris.opengrok.analysis.plain;

import java.io.IOException;
import java.io.StringReader;
import java.io.StringWriter;
import org.junit.Test;
import static org.junit.Assert.*;

public class XMLAnalyzerTest {
    @Test
    public void bug2225() throws IOException {
        String xmlText =
                "<?xml version=\"1.0\" encoding=\"US-ASCII\"?>\n" +
                "<foo>\n" +
                "  <bar name=\"com.foo.bar.MyClass\"/>\n" +
                "  <bar name=\"README.txt\"/>\n" +
                "</foo>";
        StringReader sr = new StringReader(xmlText);
        StringWriter sw = new StringWriter();
        XMLAnalyzer.writeXref(sr, sw, null, null, null);
        String[] xref = sw.toString().split("\n");
        // Reference to a Java class should have / instead of . in the path
        assertTrue(xref[2].contains("path=com/foo/bar/MyClass"));
        // Ordinary file names should not have .'s replaced
        assertTrue(xref[3].contains("path=README.txt"));
    }

    /**
     * XML special chars inside a string were not escaped if single quotes
     * were used around the string. Bug #15859.
     */
    @Test
    public void xrefWithSpecialCharsInStringLiterals() throws IOException {
        StringReader input =
                new StringReader("<foo xyz='<betweensinglequotes>'> </foo>");
        StringWriter output = new StringWriter();
        XMLAnalyzer.writeXref(input, output, null, null, null);
        assertTrue(output.toString().contains("&lt;betweensinglequotes&gt;"));

        input = new StringReader("<foo xyz=\"<betweendoublequotes>\"> </foo>");
        output = new StringWriter();
        XMLAnalyzer.writeXref(input, output, null, null, null);
        assertTrue(output.toString().contains("&lt;betweendoublequotes&gt;"));
    }
}
