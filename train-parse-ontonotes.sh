#!/bin/bash
#
# Train a Factorie TransitionBasedParser using Ontonotes training data
#

MEMORY=24g

trainDir="/iesl/canvas/jdchoi/clearnlp/dat/general-2.0.1/trn-pmd/"
testDir="/iesl/canvas/jdchoi/clearnlp/dat/general-2.0.1/tst-pmd/"
devDir="/iesl/canvas/jdchoi/clearnlp/dat/general-2.0.1/dev-pmd/"

MODELNAME="models/OntonotesTransitionBasedParser.factorie"
trainDir="--train-dir=$trainDir"
testDir="--test-dir=$testDir"
devDir="--dev-dir=$devDir"
save="--save-model"
loader="--loader=LoadOntonotes5"
svm="--use-svm=false"
hinge="--hinge=true"
boot="--bootstrapping=0"
cutoff="--cutoff=1"
threads="--num-threads=9"
l1="--l1=0.0038601516326701103"
l2="--l2=0.25058073642978584"
rate="--rate=0.07778997189396746"
delta="--delta=0.1"
model="--model=$MODELNAME"
iters="--max-iterations=7"

java -classpath `cat CP.hack` -Xmx$MEMORY cc.factorie.app.nlp.parse.TransitionBasedParserTrainer $trainDir $testDir $devDir $onto $svm $boot $cutoff $threads $l1 $l2 $rate $delta $model $iters $hinge
