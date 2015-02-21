#!/bin/bash
#

MEMORY=5g

train="/iesl/data/conll/2003/eng.train"
test="/iesl/data/conll/2003/eng.testb"

MODELNAME="StackedConllChainNer.factorie"
train="--train=$train"
test="--test=$test"
save="--save-model=true"
model="--save-model=$MODELNAME"
iters="--num-iters=5"
#l1="--l1=0.0013000585488208332"
#l2="--l2=2.9163617923455925E-5"
rate="--rate=0.03415922270734325"
delta="--delta=0.1"

java -classpath lib/factorie-stacked-1.0-SNAPSHOT.jar:$FAC_CP:$WORDNET_CP:$LEXICON_CP -Xmx$MEMORY cc.factorie.app.nlp.ner.ConllStackedChainNerTrainer $train $test $save $model $iters $rate $delta
