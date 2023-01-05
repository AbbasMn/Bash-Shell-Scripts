#!/bin/bash
# $? contains thereturn code of the previously executed command
# if returns 0 => success
# if returns other than 0 => error condition
# used for error checking

cd ./BashFunctions; ls *.jpg 
echo "Returned code is $?"

HOST="google.com"
RETURN_CODE="$?"

ping $HOST
# if [ $RETURN_CODE -eq "0" ]; then
#     echo "$HOST reachable"
# else
#     echo "$HOST unreachable"
# fi

# The command following a double ampersand (&&) will only execute if the previous command succeeds.
# Said another way, the command following a double ampersand will only run if the previous command exits with a 0 exit status.

# mkdir /newDir && mkdir /newDir/test

# With an OR, only one of the two commands will successfully execute.
# The command following a double pipe (||) will only execute if the previous command fails. If the first command returns a non-zero exit status, then the next command is executed.
# If the first command fails however, then the second command is executed.

# if [ $RETURN_CODE -eq "0" || mkdir /newDir ]; then
#     echo "Or works"
# else
#     echo "Or not works"
# fi

ping $HOST && echo "$HOST Reachable"

# If you want to chain multiple commands together on a single line, 
# you can do that by separating those commands with a semicolon. The semicolon does not check the exit status of the previous command. 
# The command following a semicolon will always get executed, no matter if the previous command failed or succeeded.
echo "command1"; echo "command2"; echo "command3"

# You can use the exit command anywhere in your shell script. Whenever the exit command is reached, your shell script will stop running.
# Not only do normal commands return an exit status, but shell scripts do as well. 
# You can control the exit status of your shell script by using the exit command. 
# Simply use the exit command in your script and follow it with a number from 0 to 255.

ping $HOST
RETURN_CODE="$?"
if [ $RETURN_CODE -ne "0" ]
then
    echo "$HOST unreachable"
    exite 1
else
    echo "$HOST reachable"
    exite 0
fi
exite 0

# Now your shell script can be called by another script and its exit status can be examined just like any other command.
# Since you control the exit statuses, you can make them have a significant meaning.
# Maybe a return code of 1 means that one type of error occurred while a return code of 2 means that a different type of error occurred.
 
 
# If you have scripts that are executing other scripts, then you can program accordingly to these returns codes if you need or want to.
