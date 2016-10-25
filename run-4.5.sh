#!/bin/bash

cd input

java -jar ../antlr-4.5-complete.jar \
	-o ../output-4.5 \
	com/test/html/HTMLLexer.g4 \
	com/test/html/HTMLParser.g4 \
	org/test/xml/XMLParser.g4 \
	org/test/xml/XMLLexer.g4 \
