#!/bin/bash
#
# Train a Factorie TransitionBasedParser using Ontonotes training data
#

MEMORY=48g

trainFile="/iesl/canvas/mccallum/data/ontonotes-en-1.1.0/trn-pmd/nw-wsj-trn.dep.pmd"
testFile="/iesl/canvas/mccallum/data/ontonotes-en-1.1.0/dev-pmd/nw-wsj-24.dep.pmd"

MODELNAME="WSJTransitionBasedParser.factorie"
trainDir="--train=$trainFile"
testDir="--test=$testFile"
save="--save-model"
wsj="--wsj=true"
svm="--use-svm=false"
boot="--bootstrap=0"
cutoff="--cutoff=2"
threads="--nThreads=20"
l1="--l1=7.686698161843509E-5"
l2="--l2=1.3132356315892708E-10"
rate="--rate=0.043777715787333124"
delta="--delta=0.5457919837130868"
model="--model=$MODELNAME"
iters="--max-iterations=2"

java -classpath lib/factorie-1.0-SNAPSHOT.jar:$FAC_CP -Xmx$MEMORY cc.factorie.app.nlp.parse.TransitionBasedParserTrainer $trainDir $testDir $devDir $wsj $svm $boot $cutoff $threads $l1 $l2 $rate $delta $model $iters
