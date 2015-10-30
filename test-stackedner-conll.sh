#!/bin/bash
#

MEMORY=4g

test="/iesl/data/conll/2003/eng.testb"

test="--test=$test"

java -cp `cat CP.hack` -Xmx$MEMORY cc.factorie.app.nlp.ner.ConllStackedChainNerTester $test
