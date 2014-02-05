#!/bin/bash
#

DATA="/iesl/canvas/strubell/data"
MEMORY=2g

trainDir="--trainDir=$DATA/wsj/train/"
testDir="--testDir=$DATA/wsj/dev/"

java -classpath lib/factorie-oldonto-1.0-SNAPSHOT.jar:$FAC_CP -Xmx$MEMORY cc.factorie.app.nlp.parse.TransitionBasedParserOptimizerNEW $trainDir $testDir
