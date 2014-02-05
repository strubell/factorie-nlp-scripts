#!/bin/bash
#
# Train a Factorie ForwardPOSTagger using WSJ training data
#

MEMORY=16g
MODELNAME="WSJForwardPosTagger.factorie"

train="--trainFile=/iesl/canvas/mccallum/data/ontonotes-en-1.1.0/trn-pmd/nw-wsj-trn.dep.pmd"
test="--testFile=/iesl/canvas/mccallum/data/ontonotes-en-1.1.0/tst-pmd/nw-wsj-23.dep.pmd"
l1="--l1=0.18593663771160765"
l2="--l2=0.10764707194808892"
rate="--rate=0.05115156518007913"
delta="--delta=17.039887963266338"
cutoff="--cutoff=3"
hinge="--use-hinge-loss=false"
save="--save-model=true"
model="--model=$MODELNAME"

java -classpath lib/factorie-1.0-SNAPSHOT.jar:$FAC_CP -Xmx$MEMORY cc.factorie.app.nlp.pos.ForwardPosTrainer --wsj $train $test $l1 $l2 $rate $delta $cutoff $hinge $save $model
