# Logs are the who, what, when, where and why
# Output may scroll off the screen
# Script may run unattended (CRON, etc.)

# syslog standard 
# The Linux operating system uses the syslog standard for message logging.
# This allows programs and applications to generate messages that can be captured, processed, and stored by the system logger.
 
# It eliminates the need for each and every application having to implement a logging mechanism. 
# That means we can take advantage of this logging system in our shell scripts.
 
# The syslog standard uses facilities and severities to categorize messages. Each message is labeled with a facility code and a severity level. 
# The various combinations of facilities and severities can be used to determine how a message is handled.
 
# Facilities are used to indicate what type of program or what part of the system the message originated from. 
# For example, messages that are labeled with the kern facility originate from the Linux kernel. 
# Messages that are labeled with the mail facility come from applications involved in handling mail.
 
 
# There are several facilities. If your script is involved in handling mail, you could use the mail facility for logging.
# If it's not clear what facility to use, you can simply use the user facility. 
# Also, the facilities ranging from local0 to local7 are to be used to create custom logs. These facilities would also be appropriate for custom written shell scripts.
 
# The most severe message is an emergency message and the least severe message is a debugging message.
 
# These combinations of facilities and severities are used by the system logger to handle these messages.
# Most messages are simply written to a file. Each distribution uses a slightly different set of defaults,
# and these logging rules are configurable and can be changed.
 
# You'll find many messages stored in /var/log/messages on some distributions while others use /var/log/syslog, for example.
# You'll have to consult the documentation for the system logger that is in use on your system.
# It's typically one of syslogd, rsyslog, or syslog-ng, although there are several other possibilities.


#!/bin/bash
# set -x
HOST="google.com"
function pingGoogle() {
    printf '\n\n'
    printf '%s' "***Log=> "
    printf '%s\n' "pingGoogle***"
    local LOCAL_VAR=test
    echo "Local Variable = $LOCAL_VAR"
    ping $HOST
    RETURN_CODE="$?"
    if [ $RETURN_CODE -ne "0" ]
    then
        echo "$HOST unreachable"
        exit 0
    else
        echo "$HOST reachable"
        case_statements_user_entry #>> ./BashFunctions/logs
    fi
    exit 1
}

function case_statements_user_entry() {
    printf '\n\n'
    printf '%s' "***Log=> "
    printf '%s\n' "Case Statementsuser Entry***"
    HOST="google.com"
    read  -p "Enter Y/N:  " ANSWERE
    case $ANSWERE in
        [yY]|[yY][eE][sS]) 
            echo "You answered Yes"
            ;;

        [yY]|[yY][eE][sS]) 
            echo "You answered Yes"
            ;;

        [nN]|[nN][oO]) 
            echo "You answered No"
            ;;
            
        *) 
            echo "Invalid answere."
            ;;
    esac
    exit 0
}

pingGoogle >> ./BashFunctions/logs
 

