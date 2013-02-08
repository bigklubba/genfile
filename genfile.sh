#!/bin/sh

SCRIPT_DIR=`dirname "$0"`

if [ -z "$JAVA_HOME" ]; then
    _RUNJAVA=java
else
    _RUNJAVA="$JAVA_HOME"/bin/java
fi

$_RUNJAVA -cp "$SCRIPT_DIR/bin/" StartGen $@ >> output/generated_output.txt

