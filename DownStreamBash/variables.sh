#!/bin/bash
printf '\n\n'
printf '%s\n' "/// Variables ///"
SCRIPT_PATH="./DownStreamBash/sleep.sh"

# $SCRIPT_PATH = "$SCRIPT_PATH" = ${SCRIPT_PATH}

. $SCRIPT_PATH
# or
source $SCRIPT_PATH

# or
bash $SCRIPT_PATH

# or
eval '$SCRIPT_PATH'

# or
($SCRIPT_PATH)

# or
(exec $SCRIPT_PATH)

# or
OUTPUT=`$SCRIPT_PATH`
echo "reformat the Output as 1 line =====>"$OUTPUT

# The curly brace syntax is optional unless you need to immediately precede or follow the variable with additional data. 
echo "SCRIPT_PATH => ${SCRIPT_PATH} blabla"