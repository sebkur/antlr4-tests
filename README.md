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
