#!/bin/bash
# get_classpaths.sh

PROJ_ROOT=$FACTORIE_ROOT
START_DIR=`pwd`

# If the root directory is not passed as an environment variable, set it to 
# the current directory.
if [ -z "$PROJ_ROOT" ]
then
  PROJ_ROOT=$START_DIR
fi

echo "PROJ_ROOT: "$PROJ_ROOT

# Get classpath: all jar files from maven -- either from a file CP.hack, or 
# if this file does not exist yet, from the output of a maven compile.
# TODO: there should be a nice and automated way for starting after building -
# for now, this hack attempts that, somehow.
if [ ! -f "$START_DIR/CP.hack" ]
then
 echo 'CP.hack does not exist, get class paths ...'
 cd $PROJ_ROOT
 mvn -X -Dmaven.test.skip=true compile -Pnlp-jar-with-dependencies \
 | grep 'classpathElements = ' \
 | sed 's#^.* classpathElements = \[\(.*\)\]$#\1#g' \
 | sed 's#, #:#g' \
 | head -1 \
 > $START_DIR/CP.hack
 cd -
 echo '... done'
fi

