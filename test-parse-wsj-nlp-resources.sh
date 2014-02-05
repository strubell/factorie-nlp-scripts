#!/bin/bash
#
#
#
MEMORY="4g"

testData="--test=/iesl/canvas/mccallum/data/ontonotes-en-1.1.0/tst-pmd/nw-wsj-23.dep.pmd"
#testData="--test=/iesl/canvas/mccallum/data/ontonotes-en-1.1.0/dev-pmd/nw-wsj-24.dep.pmd"

#for i in {1..10}
#do
java -classpath lib/factorie-1.0-SNAPSHOT-nlp-jar-with-dependencies.jar -Xmx$MEMORY -Dfile.encoding=UTF-8 cc.factorie.app.nlp.parse.TransitionBasedParserTester --wsj $testData 
#done
