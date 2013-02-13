#!/bin/sh

SCRIPT_DIR=`dirname "$0"`

if [ -z "$JAVA_HOME" ]; then
    _RUNJAVA=java
else
    _RUNJAVA="$JAVA_HOME"/bin/java
fi

echo "###### GENERATE OUTPUT    ######"
$_RUNJAVA -jar "$SCRIPT_DIR/target/genfile-1.0-SNAPSHOT-jar-with-dependencies.jar" $@ >> output/generated_output.txt
echo "###### DONE               ######"

