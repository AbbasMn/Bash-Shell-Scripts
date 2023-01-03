#!/bin/bash
# Global Variables
# Variables are global and have to defined before used

# Note: If a global variable is defined within a function, 
# it is not available outside that function until the function is called and executed.


# Local Variables
# Can only be accesssed within the function. using local keyword: local LOCAL_VAR=10
# Only functions can have local variables => Best practice: keep variables local in functions

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