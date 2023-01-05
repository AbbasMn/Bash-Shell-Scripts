#!/bin/bash -e
#!/bin/bash -ex
#!/bin/bash -v
#!/bin/bash -vx
set -x
PS4=" \n *** Line: \${LINENO} \n   => Bash Source:  \${BASH_SOURCE} \n   => Function Name: \${FUNCNAME[0]:+\${FUNCNAME[0]}()} \n   => Script:        "

# Maybe you could write this information to a log file and include time stamps showing exactly when each command was executed.
debug() {
    echo "Debug function executing: $@"
    $@ >./BashFunctions/debug
    $@
}

# Sed: Stream editor
#  A stream is data that travels from:
#    - one process to another through a pipe
#    - one file to another as a redirect
#    - one device to another
# 
# Stndard Input= Standard Input Stream, etc.
# Streams are typically textual data

# Sed performs text transformations on streams
# Examples:
#   - Substitute some text for other text.
#   - Remove lines
#   - Append text after given lines
#   - Insert text before certain lines

# Sed is used programmatically, not interactively

# The most common use of Sed is to act as a command line version of find and replace.
type -a sed 
# man sed   
echo "Abbas is the assistant regional manager. assistant, assistant, assistant, assistant, ..."  > ./BashFunctions/manager.txt
cat ./BashFunctions/manager.txt

# Let's say you want to replace the text of assistant with the text of assistant to the.
# To do that, you would use the substitute command and said the substitute command is represented by
# the character S.
 
# if nothing matches said doesn't perform any alterations, and therefore the text is returned without alteration.

sed 's/assistant/friend to the/' ./BashFunctions/manager.txt   
# Note: Sed is not altering the contents of the file. 
cat ./BashFunctions/manager.txt

# Sed is case sensitive by default.
# If you want to perform a case insensitive search, you'll need to supply a flag: 
#   i => ignore case sensitives
#   I => doesn't ignore case sensitives
sed 's/ASSISTANT/friend to the/i' ./BashFunctions/manager.txt 

#   g  => global replace
sed 's/assistant/friend to the/g' ./BashFunctions/manager.txt 

# If you want to replace the second occurrence of the search pattern, use the number 2 is a flag.
# If you want to replace the third occurrence, use 3, the fourth use 4, et cetera, et cetera.
sed 's/assistant/friend to the/3' ./BashFunctions/manager.txt 

# Sometimes you don't want to just see the output displayed to your terminal, but instead you want to
# save that output, one way to do that is to redirect the output of the set command to a file.
 
# sed 's/assistant/friend to the/3' ./BashFunctions/manager.txt > ./BashFunctions/manager.back
#  or
sed 's/assistant/friend to the/3' ./BashFunctions/manager.txt | tee ./BashFunctions/manager.back
ls
cat ./BashFunctions/manager.back

# If you only want to save the lines where matches were made, you can use the w flag followed by a file name.
sed 's/assistant/friend to the/gw>w' ./BashFunctions/manager.txt
cat ./BashFunctions/manager.txt

# I would like to point out that said can be used in a pipeline instead of specifying a file to work on.
# The simplest example would be to get a file and pipe that to said like this.

# This is a very common pattern with Linux commands where they can be given a file to operate on or 
# they can use the data sent through a pipe to operate on. We've seen this with other commands such as cut off, sort of unique and others command.
# Pipelining is very powerful because you string as many commands together as needed to make the data look the way you want it to.

cat ./BashFunctions/manager.txt | sed 's/assistant/friend to the/g'

# Now to escape a character, simply precede it with a backslash.
echo "/home/jason/dog" | sed 's/\jason/work/'

echo 'a^c' | sed 's/\^/bbb/'

# I'm going to use a pound sign and now said we'll treat that pound sign as the delimiter. 
# So now I can just go ahead and specify the text I want to use here in my search pattern
echo '/abas/afrooz' | sed 's#/abas/afrooz#/ashkan/neda/nima#' 
echo '/abas/afrooz' | sed 's:/abas/afrooz:/ashkan/neda/nima:' 
