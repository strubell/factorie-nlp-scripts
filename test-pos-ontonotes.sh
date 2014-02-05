#!/bin/bash
#
# Test the specified forward pos tagger model on Ontonotes
#
MEMORY="4g"

modelLoc="--model=/iesl/canvas/strubell/models/OntonotesForwardPosTagger.factorie"
testData="--testDir=/iesl/canvas/jdchoi/clearnlp/dat/general-2.0.1/tst-pmd/"

java -classpath lib/factorie-1.0-SNAPSHOT-nlp-jar-with-dependencies.jar:$FAC_CP -Xmx$MEMORY -Dfile.encoding=UTF-8 cc.factorie.app.nlp.pos.ForwardPosTester $modelLoc $testData 

