#!/bin/bash
#
# Train a Factorie TransitionParser using Onotnotes training data
# Command line argument specifies directory containing ontonotes-en-1.1.0 data directory
#

MEMORY=5g

train="/iesl/canvas/strubell/data/conll2003/eng.train"
test="/iesl/canvas/strubell/data/conll2003/eng.testa"

MODELNAME="ConllChainNer.factorie"
train="--train=$train"
test="--test=$test"
save="--save-model=true"
model="--save-model=$MODELNAME"

java -classpath lib/factorie-1.0-SNAPSHOT.jar:$FAC_CP:$WORDNET_CP:$LEXICON_CP -Xmx$MEMORY cc.factorie.app.nlp.ner.BasicConllNerTrainer $train $test $save $model
