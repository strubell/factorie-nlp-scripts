#!/bin/bash
#

DATA="/iesl/canvas/strubell/data"
MEMORY=2g

trainDir="--train-dir=$DATA/general-2.0.1/trn-pmd/"
testDir="--dev-dir=$DATA/general-2.0.1/dev-pmd/"

java -classpath `cat CP.hack` -Xmx$MEMORY  cc.factorie.app.nlp.parse.TransitionBasedParserOptimizer $trainDir $testDir
