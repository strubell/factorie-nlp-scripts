#!/bin/bash
#
# Train a Factorie TransitionBasedParser using Ontonotes training data
#

MEMORY=48g


trainDir="/iesl/canvas/strubell/data/wsj-malt/trn-pm/"
testDir="/iesl/canvas/strubell/data/wsj-malt/tst-pm/"
devDir="/iesl/canvas/strubell/data/wsj-malt/dev-pm/"
#trainDir="/iesl/canvas/strubell/data/wsj-malt/trn-pm/"
#testDir="/iesl/canvas/strubell/data/wsj-malt/tst-pm/"
#devDir="/iesl/canvas/strubell/data/wsj-malt/dev-pm/"

MODELNAME="WSJTransitionBasedParser.factorie"
trainDir="--train-dir=$trainDir"
testDir="--test-dir=$testDir"
devDir="--dev-dir=$devDir"
load="--load=LoadWSJMalt"
save="--save-model"
svm="--use-svm=false"
boot="--bootstrapping=0"
cutoff="--cutoff=2"
threads="--num-threads=20"
l1="--l1=7.686698161843509E-5"
l2="--l2=1.3132356315892708E-10"
rate="--rate=0.043777715787333124"
delta="--delta=0.5457919837130868"
model="--model=$MODELNAME"
iters="--max-iterations=2"

java -classpath `cat CP.hack` -Xmx$MEMORY cc.factorie.app.nlp.parse.TransitionBasedParserTrainer $trainDir $testDir $devDir $svm $boot $cutoff $threads $l1 $l2 $rate $delta $model $iters
