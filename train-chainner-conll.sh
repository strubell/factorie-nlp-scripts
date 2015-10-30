#!/bin/bash

MEMORY=5g

train="/iesl/data/conll/2003/eng.train"
test="/iesl/data/conll/2003/eng.testa"

MODELNAME="ConllChainNer.factorie"
train="--train=$train"
test="--test=$test"
save="--save-model=true"
model="--save-model=$MODELNAME"
brown="--brown=/iesl/canvas/strubell/data/brownBllipClusters"

java -cp `cat CP.hack` -Xmx$MEMORY cc.factorie.app.nlp.ner.ConllChainNerTrainer $train $test $save $model $brown
