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
 * Copyright (c) 2009, 2010, Oracle and/or its affiliates. All rights reserved.
 */

package org.opensolaris.opengrok.analysis.fortran;
import java.io.IOException;
import java.io.Reader;
import org.opensolaris.opengrok.analysis.JFlexTokenizer;

%%
%public
%class FortranSymbolTokenizer
%extends JFlexTokenizer
%unicode
%init{
super(in);
%init}
%type boolean
%eofval{
return false;
%eofval}
%char

Identifier = [a-zA-Z_] [a-zA-Z0-9_]*
Label = [0-9]+

%state STRING COMMENT SCOMMENT QSTRING

%%

<YYINITIAL> {
 ^{Label} { }
 ^[^ \t\f\r\n]+ { yybegin(SCOMMENT); }
{Identifier} {String id = yytext();
                if(!Consts.kwd.contains(id.toLowerCase())) {
                        setAttribs(id, yychar, yychar + yylength());
                        return true; }
              }
 \"     { yybegin(STRING); }
 \'     { yybegin(QSTRING); }
 \!     { yybegin(SCOMMENT); }
}

<STRING> {
 \"     { yybegin(YYINITIAL); }
\\\\ | \\\"     {}
}

<QSTRING> {
 \'     { yybegin(YYINITIAL); }
}

<COMMENT> {
"*/"    { yybegin(YYINITIAL);}
}

<SCOMMENT> {
\n      { yybegin(YYINITIAL);}
}

<YYINITIAL, STRING, COMMENT, SCOMMENT, QSTRING> {
<<EOF>>   { return false;}
.|\n    {}
}
