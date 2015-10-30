#!/bin/bash
#
#
#
MEMORY="4g"

#modelLoc="--model=/iesl/canvas/strubell/models/OntonotesTransitionBasedParser.factorie"
testData="--test-dir=/iesl/canvas/jdchoi/clearnlp/dat/general-2.0.1/tst-pmd/"
#testData="--testDir=/iesl/canvas/strubell/data/ontonotes-en-1.1.0/dev-pmd/"

java -classpath `cat CP.hack` -Xmx$MEMORY -Dfile.encoding=UTF-8 cc.factorie.app.nlp.parse.TransitionBasedParserTester $testData 
