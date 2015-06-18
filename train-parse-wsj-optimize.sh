#!/bin/bash
#

DATA="/iesl/canvas/strubell/data"
MEMORY=2g

trainDir="--trainDir=$DATA/wsj/train/"
testDir="--testDir=$DATA/wsj/dev/"

java -classpath `cat CP.hack` -Xmx$MEMORY cc.factorie.app.nlp.parse.TransitionBasedParserOptimizer $trainDir $testDir
