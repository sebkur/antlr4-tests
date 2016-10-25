# This is a test repository for antlr4

## Files

The `input` directory contains the XML and HTML grammars
from <https://github.com/antlr/grammars-v4>. They have been modified to
have a package name in this
[commit](https://github.com/sebkur/antlr4-tests/commit/dc63c691cf9307d8175db2655f9ba9341cc23f8c).

* `antlr-4.5-complete.jar` is the official antlr4 runtime
* `antlr4-4.5.4-SNAPSHOT.jar` is the jar built from
  [this fork](https://github.com/sebkur/antlr4/tree/allow_path_in_token_vocab)

## Run the test

Using the official runtime (this fails on purpose):

`./run-4.5.sh`

Using the official runtime (this fails on purpose):

`./run-snapshot.sh`

## Results

`run-snapshot.sh` generates parsers for both grammars
without problems.

`> tree output-snapshot`

    output-snapshot/
    |-- com
    |   `-- test
    |       `-- html
    |           |-- HTMLLexer.java
    |           |-- HTMLLexer.tokens
    |           |-- HTMLParserBaseListener.java
    |           |-- HTMLParser.java
    |           |-- HTMLParserListener.java
    |           `-- HTMLParser.tokens
    `-- org
        `-- test
            `-- xml
                |-- XMLLexer.java
                |-- XMLLexer.tokens
                |-- XMLParserBaseListener.java
                |-- XMLParser.java
                |-- XMLParserListener.java
                `-- XMLParser.tokens

    6 directories, 12 files

`run-4.5.sh` does not work because the `*.tokens` files cannot be resolved

`> ./run-4.5.sh`:

    error(3):  cannot find tokens file ../output-4.5/org/test/xml/XMLLexer.tokens given for XMLParser
    warning(125): XMLParser.g4:40:16: implicit definition of token XMLDeclOpen in parser
    warning(125): XMLParser.g4:40:39: implicit definition of token SPECIAL_CLOSE in parser
    warning(125): XMLParser.g4:43:40: implicit definition of token CDATA in parser
    warning(125): XMLParser.g4:43:48: implicit definition of token PI in parser
    warning(125): XMLParser.g4:43:53: implicit definition of token COMMENT in parser
    warning(125): XMLParser.g4:45:20: implicit definition of token Name in parser
    warning(125): XMLParser.g4:49:16: implicit definition of token EntityRef in parser
    warning(125): XMLParser.g4:49:28: implicit definition of token CharRef in parser
    warning(125): XMLParser.g4:51:25: implicit definition of token STRING in parser
    warning(125): XMLParser.g4:56:16: implicit definition of token TEXT in parser
    warning(125): XMLParser.g4:56:23: implicit definition of token SEA_WS in parser
    error(126): XMLParser.g4:45:16: cannot create implicit token for string literal in non-combined grammar: '<'
    error(126): XMLParser.g4:45:36: cannot create implicit token for string literal in non-combined grammar: '>'
    error(126): XMLParser.g4:45:48: cannot create implicit token for string literal in non-combined grammar: '<'
    error(126): XMLParser.g4:45:52: cannot create implicit token for string literal in non-combined grammar: '/'
    error(126): XMLParser.g4:45:61: cannot create implicit token for string literal in non-combined grammar: '>'
    error(126): XMLParser.g4:46:16: cannot create implicit token for string literal in non-combined grammar: '<'
    error(126): XMLParser.g4:46:36: cannot create implicit token for string literal in non-combined grammar: '/>'
    error(126): XMLParser.g4:51:21: cannot create implicit token for string literal in non-combined grammar: '='

`> tree output-4.5`

    output-4.5/
    `-- com
        `-- test
            `-- html
                |-- HTMLLexer.java
                |-- HTMLLexer.tokens
                |-- HTMLParserBaseListener.java
                |-- HTMLParser.java
                |-- HTMLParserListener.java
                `-- HTMLParser.tokens

    3 directories, 6 files
