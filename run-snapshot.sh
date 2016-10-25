#!/bin/bash

cd input

java -jar ../antlr4-4.5.4-SNAPSHOT.jar \
	-o ../output \
	com/test/html/HTMLLexer.g4 \
	com/test/html/HTMLParser.g4 \
	org/test/xml/XMLParser.g4 \
	org/test/xml/XMLLexer.g4 \
