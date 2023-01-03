#!/bin/bash
#  $$ represents the PID or process ID of the currently running shell script.

# ///Shell Script Order and Checklist: ///
# 1-Shebang
# 2-Comments/file header
# 3-Global variables
# 4-Functions =? Use local variables
# 5-Main script contents
# 6-exit with and exit status => exit <STATUS> at various exit points



# 1.	First off, all scripts should start with a shebang. 
# This is the first line of your script and it explicitly declares which interpreter is to be used to execute the script.
 
# 2.	Next, you should include at least a one-line comment summarizing what the script does and maybe why it exists. 
# You can include more information if you like. Some people like to include information such as the original author of the script, 
# the version of the script, etc.
 
# 3.	If you are going to be using global variables in your script, they should come next unless their 
# value cannot be determined until a later point in your script.
 
# 4.	Functions should come next. Group all of your functions together following the global variables. 
# Within your functions, be sure to use the local keyword when defining variables that are local to the function. 
 
# 5.	Following the functions section, the main portion of your shell script begins. 
 
# 6.	Finally, remember to explicitly use an exit status. If you do not supply an exit status, which is a number from 0 to 255, 
# the exit status of the previously executed command will be used as the exit status of your script. It's best to control this rather 
# than to leave it to chance. At least end your script with an exit 0 line. If your script was able to get to the last line, 
# then in most cases that means it has successfully completed.
 
# 7.	Also keep in mind the other places where your shell script may terminate. You'll want to use exit statements there as well. 
# For example, if your script performs some sort of check and then stops because the check failed, you'll want to exit with a non-zero 
# exit status at that point.

# ///Shell Script Order and Checklist ///


# set -x
# sh ./DownStreamBash/up-down-streams.sh
# sh ./DownStreamBash/variables.sh
# sh ./DownStreamBash/config.sh
# sh ./DownStreamBash/tests-conditional-expression.sh
# sh ./DownStreamBash/loops.sh
# sh ./BashFunctions/bash-files-copy-move-backup.sh

# files copy, move and backup with-positional parameters => $0=BashScriptName $1=parameter1 $2=parameter2
# sh ./BashFunctions/bash-files-copy-move-backup-with-positional-parameters.sh ./BashFunctions/ jpg
# sh ./BashFunctions/bash-return-codes-and-exit-statuses.sh
sh ./BashFunctions/bash-functions.sh



