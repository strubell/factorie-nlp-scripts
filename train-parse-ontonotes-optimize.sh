#!/bin/bash
#

DATA="/iesl/canvas/strubell/data"
MEMORY=2g

trainDir="--trainDir=$DATA/general-2.0.1/trn-pmd/"
testDir="--testDir=$DATA/general-2.0.1/dev-pmd/"

java -classpath lib/factorie-1.0-SNAPSHOT.jar:$FAC_CP -Xmx$MEMORY cc.factorie.app.nlp.parse.TransitionBasedParserOptimizerNEW $trainDir $testDir
