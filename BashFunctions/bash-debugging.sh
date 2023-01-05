
# Examine the inner workings of your script
# -x => prints commands as they execute
# Called an x-trace, tracing, or print debugging
# #!/bin/bash -x
# set -x => set +x to stop debugging 


# The bash shell provides some options that can help you in debugging your scripts. You can use these options
# by updating the first line in your script to include one or more of these options.
 
 
# The most popular of these options is the '-x' option. The '-x' option prints commands and their arguments
# as they are executed. This means that, instead of variables being displayed, the values of those variables are displayed.
 
# The same thing goes for expansions. Wildcards aren't displayed, but what they expand to is displayed.
# You'll sometimes hear this type of debugging called "print debugging," tracing, or an x-trace.


# #!/bin/bash -x
# set -x
# TEST_VAR="test"
# TEST_VAR1="test1"
# echo "$TEST_VAR"
# set +x
# echo "$TEST_VAR1"
# echo "$TEST_VAR1"
# echo "$TEST_VAR1"

# Another useful option that can help you in finding errors in your scripts is the '-e' option.
# It causes your script to exit immediately if a command exits with a non-zero exit status.
# This can really help you pin-point exactly where the problem is.
 
# You can use this in combination with other options including the -x option. When used as an argument to the bash command, these options act like any other options for other commands.
# Options that do not take arguments can be combined and only one hyphen is required followed by the options. Also,
#  it doesn't matter in which order they are used.  So we can use '-ex' or '-xe'.
# If you want, you can use a hyphen before each option, but this is unconventional.

# the '-v' option prints the shell commands just like they are read in from the script. '-v' prints everything before any substitutions and expansions are applied. The -x option performs variable and wildcard expansion,
# but the -v option does not. You can use them in combination to see what a line looks like before and after substitutions and expansions occur.

#  more info => help set | less

#!/bin/bash -e
#!/bin/bash -ex
#!/bin/bash -v
#!/bin/bash -vx
set -ex
FILE_NAME="./BashFunctions/logstemp"
VAR_TEST="test"
echo $VAR_TEST
ls $FILE_NAME
echo $FILE_NAME
