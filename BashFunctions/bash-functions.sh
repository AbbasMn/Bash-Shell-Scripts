#!/bin/bash
# Now your shell script can be called by another script and its exit status can be examined just like any other command.
# Since you control the exit statuses, you can make them have a significant meaning.
# Maybe a return code of 1 means that one type of error occurred while a return code of 2 means that a different type of error occurred.

# If you have scripts that are executing other scripts, then you can program accordingly to these returns codes if you need or want to.

func_tmp() {
    echo "Invoked function temp"
    exit 0
}

# Note: functions had to be declared before they are used. It's a best practice to place all of your functions at the top of your script.
# This ensures that they are all defined before they are used.

function func_name() {
    HOST="google.com"
    ping $HOST
    RETURN_CODE="$?"
    if [ $RETURN_CODE -ne "0" ]
    then
        echo "$HOST unreachable"
        exit 0
    else
        echo "$HOST reachable"
        func_tmp
    fi
    exit 1
}

# Note: When calling the function, do not use parentheses. You may have seen this syntax and
#  style in other programming languages, but that doesn't work in shell scripts.
if [ func_name ] 
then
    echo "Destination is pingged successfully"
fi

# Sending parameters to function
# First parameter is stored @1, second in $2, etc.
# $@ contains all parameters
# $0 is the script itself, not function names

func_hello() {
    echo "All parameters: $@"
    for NAME in $@; do
        echo "Hello $NAME"
    done
}

func_hello Abbas Afrooz Ashkan

# Functions are really like shell scripts within a shell script. Just like a shell script, a function has an exit status,
# which is sometimes called a return code. This exit status can be explicitly set by using the return statement and following
# it with the status you would like to return. If no return statement is used, then the exit status of the function is the exit
# status of the last command executed in that function.
# $? => exit status
# 0 => success

# echo "$?"

# The return statement only accepts a number. And it's only integers between 0 and 255 that can be used as an exit status.
# An exit status of 0 signifies the successful completion of a command or a function. A non-zero exit status indicates some type of error. To access the exit status of a function, use $? right after the function is called.
# In this snippet, the value of $? will be the exit status of the my_function function. You can use the exit status of a function to make a decision.
# For example, you can check to see if the exit status is 0. If it is not, then you know some sort of error occurred.
# At that point you could do some sort of error handling

my_function() {
    local RETURN_STATUS=-1
    echo "return status:$RETURN_STATUS"
    HOST="google.com"
    ping $HOST
    RETURN_CODE="$?"
    if [ $RETURN_CODE -ne "0" ]
    then
        echo "$HOST unreachable"
        RETURN_STATUS="server error-500"
        echo "return status: $RETURN_STATUS"
        return $RETURN_STATUS
    else
        echo "$HOST reachable"
        RETURN_STATUS="ok-200"
        echo "return status: $RETURN_STATUS"
        func_tmp
    fi
    RETURN_STATUS="not found-404"
    echo "return status: $RETURN_STATUS"
    return $RETURN_STATUS
}

my_function

if [ my_function ]
then
    echo "Return status => Destination is pingged successfully"
fi
