#!/bin/bash
#
# Run the ConllChainNER hyperparameter optimizer
#

java -classpath lib/factorie-1.0-SNAPSHOT.jar:$FAC_CP cc.factorie.app.nlp.parse.BasicConllNerOptimizer
