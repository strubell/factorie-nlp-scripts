#!/bin/bash
#
# Train a Factorie TransitionBasedParser using Ontonotes training data
#

MEMORY=48g

trainDir="/iesl/canvas/jdchoi/clearnlp/dat/general-2.0.1/trn-pmd/"
testDir="/iesl/canvas/jdchoi/clearnlp/dat/general-2.0.1/tst-pmd/"
devDir="/iesl/canvas/jdchoi/clearnlp/dat/general-2.0.1/dev-pmd/"

MODELNAME="OntonotesTransitionBasedParserNEW.factorie"
trainDir="--trainDir=$trainDir"
testDir="--testDir=$testDir"
devDir="--devDir=$devDir"
save="--save-model"
onto="--onto=true"
svm="--use-svm=false"
boot="--bootstrap=2"
cutoff="--cutoff=2"
threads="--nThreads=20"
l1="--l1=7.686698161843509E-5"
l2="--l2=1.3132356315892708E-10"
rate="--rate=0.043777715787333124"
delta="--delta=0.5457919837130868"
model="--model=$MODELNAME"
iters="--max-iterations=2"

java -classpath lib/factorie-1.0-SNAPSHOT.jar:$FAC_CP -Xmx$MEMORY cc.factorie.app.nlp.parse.TransitionBasedParserTrainerNEW $trainDir $testDir $devDir $onto $svm $boot $cutoff $threads $l1 $l2 $rate $delta $model $iters
