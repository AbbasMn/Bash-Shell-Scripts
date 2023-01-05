#!/bin/bash -e
#!/bin/bash -ex
#!/bin/bash -v
#!/bin/bash -vx

# Many times, using -x, -e, and -v is sufficient, but if you want a bit more control around debugging, you can create your
# own code to do it.
# One method I personally use is to create a variable called DEBUG. I set this to true if I'm currently debugging
# or false if I'm not.

# set -ex
# DEBUG=true
# DEBUG=false
# FILE_NAME="./BashFunctions/logstemp"
# VAR_TEST="test"

# if [ $(DEBUG) ]
# then
#     echo "Debug mode ON."
#     echo $VAR_TEST
#     ls $FILE_NAME
#     echo $FILE_NAME
# else
#     echo "Debug mode OFF."
# fi

# $DEBUG && echo "Debug mode ON."
# $DEBUG || echo "Debug mode OFF."

# DEBUG="echo"
# $DEBUG $(ls)

# Own debug function
# You can even create your own debug function and add whatever you would like around each command,
# or choose NOT to execute the command if you wish. Use the special variable $@ inside your function
# to access everything passed to the function.

# Maybe you could write this information to a log file and include time stamps showing exactly when each command was executed.
debug() {
    echo "Debug function executing: $@"
    $@ >./BashFunctions/debug
    $@
}
# debug ls

# PS1 - to set the prompt string, ofcourse!
# echo "PS1: "
# PS1="Select a day (1-4): "
# select i in mon tue wed exit
# do
#   case $i in
#     mon) echo "Monday";;
#     tue) echo "Tuesday";;
#     wed) echo "Wednesday";;
#     exit) exit;;
#   esac
# done

# PS2 - to set the subshell prompt string, which by default is ">", when we enter a command half and press enter,
# we get the subshell prompt string which is >, then we can complete the command and press enter, it runs.
# We can change the > to something by modifying this var
# echo "PS2: "
# PS2="Select a day (1-4): "
# select i in mon tue wed exit
# do
#   case $i in
#     mon) echo "Monday";;
#     tue) echo "Tuesday";;
#     wed) echo "Wednesday";;
#     exit) exit;;
#   esac
# done

# PS3 - mostly used in ksh, this is used to define the prompt string displayed by 'select' command, which creates a menu, so in the menu,
# the prompt string for each option can be defined by changing this one
# echo "PS3: "
# PS3="Select a day (1-4): "
# select i in mon tue wed exit
# do
#   case $i in
#     mon) echo "Monday";;
#     tue) echo "Tuesday";;
#     wed) echo "Wednesday";;
#     exit) exit;;
#   esac
# done

# PS4- we can debug a shell script by putting a set -x while running it, this enables to print each command and then its
# results a + sign is put before each command, this "+" prompt string can be changed by defining the PS4 var.
# set -x
# echo "PS4: "
# PS4="Select a day (1-4): "
# select i in mon tue wed exit
# do
#   case $i in
#     mon) echo "Monday";;
#     tue) echo "Tuesday";;
#     wed) echo "Wednesday";;
#     exit) exit;;
#   esac
# done

set -x
PS4=" \n *** Line: \${LINENO} \n   => Bash Source:  \${BASH_SOURCE} \n   => Function Name: \${FUNCNAME[0]:+\${FUNCNAME[0]}()} \n   => Script:        "
debug ls
ls -a
