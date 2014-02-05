#!/bin/bash
#
# Train a Factorie ForwardPOSTagger using Onotnotes training data
# Specify directory containing data (ontonotes-en-1.1.0) as command line paramter
#

DATA="/iesl/canvas/strubell/data"
MEMORY=16g
MODELNAME="WSJForwardPosTagger.factorie"

trainDir="--trainFile=$DATA/ontonotes-en-1.4.0/trn-pmd/nw_wsj.trn"
testDir="--testFiles=$DATA/ontonotes-en-1.4.0/dev-pmd/nw_wsj.dev,$DATA/ontonotes-en-1.4.0/tst-pmd/nw_wsj.tst"
hinge="--use-hinge-loss=false"
save="--save-model=true"
model="--model=$MODELNAME"


java -classpath res/factorie-1.0-SNAPSHOT.jar:$FAC_CP -Xmx$MEMORY cc.factorie.app.nlp.pos.ForwardPosOptimizer $trainDir $testDir $hinge $save $model
