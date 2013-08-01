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
 * Copyright 2006 Sun Microsystems, Inc.  All rights reserved.
 * Use is subject to license terms.
 */
package org.opensolaris.opengrok.analysis.java;

import java.util.HashSet;
import java.util.Set;

/**
  * Holds static hash set containing the Java keywords
  */
public class Consts{
    public static final Set<String> kwd = new HashSet<String>() ;
    static {
        kwd.add( "invoke" );
        kwd.add( "direct");
kwd.add("nop");
kwd.add("move");
kwd.add("from");
kwd.add("wide");
kwd.add("object");
kwd.add("result");
kwd.add("wide");
kwd.add("jumbo");
kwd.add("enter");
kwd.add("monitor");
kwd.add("exit");
kwd.add("check");
kwd.add("cast");
kwd.add("instance");
kwd.add("of");
kwd.add("new");
kwd.add("array");
kwd.add("filled");
kwd.add("goto");
kwd.add("eq");
kwd.add("ne");
kwd.add("lt");
kwd.add("ge");
kwd.add("gt");
kwd.add("le");
kwd.add("eqz");
kwd.add("ltz");
kwd.add("gez");
kwd.add("gtz");
kwd.add("lez");
kwd.add("aget");
kwd.add("short");
kwd.add("aput");
kwd.add("iget");
kwd.add("iput");
kwd.add("sget");
kwd.add("sput");
kwd.add("virtual");
kwd.add("super");
kwd.add("static");
kwd.add("interface");
kwd.add("string");
kwd.add("nez");
kwd.add("field");
kwd.add("method");
kwd.add("end");
kwd.add("annotation");
kwd.add("registers");
kwd.add("exception");
        kwd.add( "abstract" );
        kwd.add( "assert" );
        kwd.add( "boolean" );
        kwd.add( "break" );
        kwd.add( "byte" );
        kwd.add( "case" );
        kwd.add( "catch" );
        kwd.add( "char" );
        kwd.add( "class" );
        kwd.add( "const" );
        kwd.add( "continue" );
        kwd.add( "default" );
        kwd.add( "do" );
        kwd.add( "double" );
        kwd.add( "else" );
        kwd.add( "enum" );
        kwd.add( "extends" );
        kwd.add( "false" );
        kwd.add( "final" );
        kwd.add( "finally" );
        kwd.add( "float" );
        kwd.add( "for" );
        kwd.add( "goto" );
        kwd.add( "if" );
        kwd.add( "implements" );
        kwd.add( "import" );
        kwd.add( "instanceof" );
        kwd.add( "int" );
        kwd.add( "interface" );
        kwd.add( "long" );
        kwd.add( "native" );
        kwd.add( "new" );
        kwd.add( "package" );
        kwd.add( "private" );
        kwd.add( "protected" );
        kwd.add( "public" );
        kwd.add( "return" );
        kwd.add( "short" );
        kwd.add( "static" );
        kwd.add( "strictfp" );
        kwd.add( "super" );
        kwd.add( "synchronized" );
        kwd.add( "switch" );
        kwd.add( "this" );
        kwd.add( "throw" );
        kwd.add( "throws" );
        kwd.add( "true" );
        kwd.add( "transient" );
        kwd.add( "try" );
        kwd.add( "void" );
        kwd.add( "volatile" );
        kwd.add( "while" );
    }
}
