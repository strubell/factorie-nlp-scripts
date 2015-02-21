#!/bin/bash
#

MEMORY=250g

train="/iesl/canvas/jdchoi/clearnlp/dat/general-2.0.1/trn-pmd/"
test="/iesl/canvas/jdchoi/clearnlp/dat/general-2.0.1/dev-pmd/"

MODELNAME="OntonotesStackedChainNer.factorie"
train="--train-dir=$train"
test="--test-dir=$test"
save="--save-model=true"
model="--model=$MODELNAME"
iters="--num-iters=5"
#l1="--l1=0.0013000585488208332"
#l2="--l2=2.9163617923455925E-5"
rate="--rate=0.03415922270734325"
delta="--delta=0.1"

java -classpath lib/factorie-stackedner-1.0-SNAPSHOT.jar:$FAC_CP:$WORDNET_CP:$LEXICON_CP -Xmx$MEMORY cc.factorie.app.nlp.ner.OntonotesStackedChainNerTrainer $train $test $save $model $iters $rate $delta
