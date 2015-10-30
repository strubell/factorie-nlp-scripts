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
cutoff="--cutoff=2"
threads="--num-threads=20"
l1="--l1=0.01"
l2="--l2=1.1069368063896922E-10"
rate="--rate=0.029049946778905166"
delta="--delta=1.7900635525429895"
model="--model=$MODELNAME"
iters="--max-iterations=7"

java -classpath `cat CP.hack` -Xmx$MEMORY cc.factorie.app.nlp.parse.TransitionBasedParserTrainer $trainDir $testDir $devDir $onto $svm $boot $cutoff $threads $l1 $l2 $rate $delta $model $iters $hinge
