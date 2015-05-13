#!/bin/bash
# get_classpath.sh
#

# If the root directory is not passed as an environment variable, set it to 
# the same dir as this script.
if [ -z "$FACTORIE_ROOT" ]
then
  TAC_ROOT="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
fi

# Get classpath: all jar files from maven -- either from a file CP.hack, or 
# if this file does not exist yet, from the output of a maven compile.
# TODO: there should be a nice and automated way for starting after building -
# for now, this hack attempts that, somehow.
if [ ! -f "CP.hack" ]
then
 echo 'CP.hack does not exist, getting classpath...'
 cd $FACTORIE_ROOT
 mvn compile -X \
 | grep 'classpathElements = ' \
 | sed 's#^.* classpathElements = \[\(.*\)\]$#\1#g' \
 | sed 's#, #:#g' \
 | head -1 \
 > CP.hack
 cd -
 mv $FACTORIE_ROOT/CP.hack .
 echo '... done'
fi

