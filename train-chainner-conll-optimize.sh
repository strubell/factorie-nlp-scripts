#!/bin/bash
#

MEMORY=2g

train="--train=/iesl/data/conll/2003/eng.train"
test="--test=/iesl/data/conll/2003/eng.testa"
brown="--brown=/iesl/canvas/strubell/data/brownBllipClusters"

java -classpath `cat CP.hack` -Xmx$MEMORY cc.factorie.app.nlp.ner.ConllNerOptimizer $train $test $brown
