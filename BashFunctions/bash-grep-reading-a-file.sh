# What is grep?
# grep searches the input files for lines containing a match to a given pattern list. When it finds a match in a line, 
# it copies the line to standard output (by default), or whatever other sort of output you have requested with options.

# Though grep expects to do the matching on text, it has no limits on input line length other than available memory, 
# and it can match arbitrary characters within a line. If the final byte of an input file is not a newline, 
# grep silently supplies one. Since newline is also a separator for the list of patterns, there is no way 
# to match newline characters in a text.

# Command-line options aka switches of grep:
# -e pattern
# -i: Ignore uppercase vs. lowercase.
# -v: Invert match.
# -c: Output count of matching lines only.
# -l: Output matching files only.
# -n: Precede each matching line with a line number.
# -b: A historical curiosity: precede each matching line with a block number.
# -h: Output matching lines without preceding them by file names.
# -s: Suppress error messages about nonexistent or unreadable files.
# -x
# -f file: Take regexes from a file.
# -o: Output the matched parts of a matching line.

#!/bin/bash
# set -x
echo "Lines:"
grep -F "Local" ./BashFunctions/logs | while read -r LINE; do
    printf '%s\n' "$LINE"
done 

# Save grep results to a new file => read the new file
grep -F "***Log" ./BashFunctions/logs > ./BashFunctions/grep_found
echo "Lines:"
COUNTER=1
while read -r FIRST_PART  SECOND_PART; do
    printf '%s\n' "$COUNTER:First Part: $FIRST_PART  Second Part: $SECOND_PART"
    COUNTER=$((COUNTER+1))
done <<<$(cat ./BashFunctions/grep_found)

# Using cat Command and for Loop
# Another method to display a file's contents in individual lines is to use the cat command and the for loop.
# The for loop allows echo to print the lines from the cat command output until it reaches the end of the file.

# echo "Lines:"
# file=$(cat ./BashFunctions/logs)
# for line in $file; do
#     echo -e "$line\n"
# done


# Another method of printing a file's contents line by line is to use a here string to feed the file's 
# contents to the read command. The here string connects the contents of a variable, string, or file 
# specified after the <<< syntax to the standard input of the invoked program.

# In the while loop, the IFS= argument is an empty string to prevent trimming whitespaces.
# The -r argument prevents the interpretation of backslash-escaped characters.
# The printf command prints each line of the file. The format specifiers treat the input as a string (%s) 
# and add a newline character (\n) after each line.
# The here string feeds the cat command's output to the read command.

# echo "Lines:"
# while IFS= read -r line; do
#     printf '%s\n' "$line"
# done <<<$(cat ./BashFunctions/logs)



# pingGoogle >> ./BashFunctions/logs
