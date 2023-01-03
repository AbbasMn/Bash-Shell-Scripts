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
    if [ $RETURN_CODE -ne "0" ]; then
        echo "$HOST unreachable"
        exit 1
    else
        echo "$HOST reachable"
        func_tmp
    fi
    exit 0
}

# Note: When calling the function, do not use parentheses. You may have seen this syntax and
#  style in other programming languages, but that doesn't work in shell scripts.
if [ func_name ]; then
    echo "Destination is pingged successfully"
fi

# Sending parameters to function
# First parameter is stored @1, second in $2, etc.
# $@ contains all parameters
# $0 is the script itself, not function names

 func_hello() {
    echo "All parameters: $@"
    for NAME in $@ 
    do
        echo "Hello $NAME"
    done
 }

  func_hello Abbas Afrooz Ashkan
