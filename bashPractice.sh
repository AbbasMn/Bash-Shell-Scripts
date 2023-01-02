# Make sure the your script is executable => chmod 755 bashPractice.sh | chmod 111 101 101 bashPractice.sh | chmod rwx r-x r-x bashPractice.sh

# (hash) => #! (Shebang) 

# Different Shell Program As Interpreter
#   When you execute a script that contains a shebang, what actually happens is that the interpreter is 
#   executed and the path used to call the script is passed as an argument to the interpreter. 
#   You can prove this by examining the process table.

# If you do not supply a shebang and specify an interpreter on the first line of the script, the commands in the script will be executed using your current shell.
# Even though this can work just fine under many circumstances, it's best to be explicit and specify the exact interpreter to be used with the script.
# For example, there are features and syntax that work just fine with the bash shell that won't work with the csh shell.


#!/bin/bash
# set -x
echo "Main Stream: Sleep for 2 seconds ..."
sleep 2
echo "  Main Stream: Wake Up"
# Direct Execute from root => $ ./tmp/sleep.shsleep.sh

# Execute (Invoke) downstream bash code (file) from upstream bash code (file)
# Make the other script executable => chmod a+x ./DownStreamBash/sleep.sh
chmod a+x ./DownStreamBash/sleep.sh

# call it with sh command
sh ./DownStreamBash/sleep.sh

# Or call it with bash command
bash ./DownStreamBash/sleep.sh

# Or call it with the source command (which is an alias for .)
source ./DownStreamBash/sleep.sh

SCRIPT_PATH="./DownStreamBash/sleep.sh"

. "$SCRIPT_PATH"
# or
source "$SCRIPT_PATH"

# or
bash "$SCRIPT_PATH"

# or
eval '"$SCRIPT_PATH"'

# or
("$SCRIPT_PATH")

# or
(exec "$SCRIPT_PATH")

# or
OUTPUT=`"$SCRIPT_PATH"`
echo "reformat the Output as 1 line =====>"$OUTPUT
