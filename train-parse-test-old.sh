#!/bin/bash
#
# Train a Factorie TransitionBasedParser using Ontonotes training data
#

MEMORY=48g

trainDir="/iesl/canvas/strubell/data/ontotest/new/train/"
testDir="/iesl/canvas/strubell/data/ontotest/new/dev/"

MODELNAME="OntonotesTransitionBasedParserNEW.factorie"
trainDir="--trainDir=$trainDir"
testDir="--testDir=$testDir"
devDir=""
save="--save-model"
onto="--onto=true"
svm="--use-svm=false"
boot="--bootstrap=0"
cutoff="--cutoff=0"
threads="--nThreads=20"
l1="--l1=7.686698161843509E-5"
l2="--l2=1.3132356315892708E-10"
rate="--rate=0.043777715787333124"
delta="--delta=0.5457919837130868"
model="--model=$MODELNAME"
iters="--max-iterations=1"

java -classpath lib/factorie-1.0-SNAPSHOT.jar:$FAC_CP -Xmx$MEMORY cc.factorie.app.nlp.parse.TransitionBasedParserTrainer $trainDir $testDir $devDir $onto $svm $boot $cutoff $threads $l1 $l2 $rate $delta $model $iters
