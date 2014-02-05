#!/bin/bash
#
#
#
MEMORY="4g"

testData="--testFile=/iesl/canvas/mccallum/data/ontonotes-en-1.1.0/tst-pmd/nw-wsj-23.dep.pmd"

java -classpath lib/factorie-1.0-SNAPSHOT-nlp-jar-with-dependencies.jar -Xmx$MEMORY -Dfile.encoding=UTF-8 cc.factorie.app.nlp.pos.ForwardPosTester --wsj $testData 
