#!/bin/sh

SCRIPT_DIR=`dirname "$0"`

if [ -z "$JAVA_HOME" ]; then
    _RUNJAVAC=javac
    _RUNJAR=jar
else
    _RUNJAVAC="$JAVA_HOME/bin/javac"
    _RUNJAR="$JAVA_HOME/bin/jar"
fi

echo "########## COMPILING ##########"
$_RUNJAVAC src/*.java $@

echo "########## MOVING CLASS FILES ##########"
mv src/*.class bin/

echo "########## GENERATING JAR FILE ##########"
$_RUNJAR cvfe bin/genfile.jar StartGen bin/*.class
