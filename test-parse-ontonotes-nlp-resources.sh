#!/bin/bash
#
# Test the transition-based dependency parser included in factorie-nlp-resources
# trained/tested on Ontonotes.
#
MEMORY="4g"

testData="--testDir=/iesl/canvas/jdchoi/clearnlp/dat/general-2.0.1/tst-pmd/"
#testData="--testDir=/iesl/canvas/strubell/data/ontonotes-en-1.1.0/dev-pmd/"

#for i in {1..10}
#do
java -classpath lib/factorie-1.0-SNAPSHOT-nlp-jar-with-dependencies.jar -Xmx$MEMORY -Dfile.encoding=UTF-8 cc.factorie.app.nlp.parse.TransitionBasedParserTester $testData 
#done
