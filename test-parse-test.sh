#!/bin/bash
#
#
#
MEMORY="4g"

modelLoc="--model=/iesl/canvas/strubell/models/OntonotesTransitionBasedParser.factorie"
#testData="--testDir=/iesl/canvas/jdchoi/clearnlp/dat/general-2.0.1/dev-pmd/"
testData="--testDir=/iesl/canvas/strubell/data/ontotest/new/dev/"

for i in {1..10}
do
java -classpath lib/factorie-1.0-SNAPSHOT.jar:$FAC_CP -Xmx$MEMORY -Dfile.encoding=UTF-8 cc.factorie.app.nlp.parse.TransitionBasedParserTester $modelLoc $testData 
done
