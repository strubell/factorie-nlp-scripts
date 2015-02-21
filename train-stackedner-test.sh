#!/bin/bash
#

MEMORY=50g

train="/iesl/canvas/strubell/data/ontotest/new/train/"
test="/iesl/canvas/strubell/data/ontotest/new/dev/"

MODELNAME="OntonotesChainNerTest.factorie"
train="--train-dir=$train"
test="--test-dir=$test"
save="--save-model=true"
model="--model=$MODELNAME"
iters="--num-iters=1"
#l1="--l1=0.0013000585488208332"
#l2="--l2=2.9163617923455925E-5"
rate="--rate=0.03415922270734325"
delta="--delta=0.1"

java -classpath lib/factorie-ner-1.0-SNAPSHOT.jar:$FAC_CP:$WORDNET_CP:$LEXICON_CP -Xmx$MEMORY cc.factorie.app.nlp.ner.OntonotesStackedChainNerTrainer $train $test $save $model $iters $rate $delta
