
# You can use wildcards to create search patterns that when expanded will return a list of matching files and directories.
# Sometimes wildcards are referred to as globs or glob patterns. Globbing is the act of expanding a wildcard into the list of
# matching files and directories. Wildcards can be used in conjunction with most Linux commands.

# If a command accepts a file or directory as an argument, then you can use a wildcard in this argument to specify a file or set of files.

#  Here are the 2 main wildcards. They are the asterisk (*) and the question mark (?).
# * => The asterisk or star as I like to call it, matches zero or more characters, it matches anything. By itself,
# it's not really that useful, but when you combine it with other parts of file or directory names that you're looking for, it becomes powerful.

# match zero or more characters => *.txt , a*, a*.txt
# match exactly one character => ?.txt , a?, a?.txt
# A Character classess => [] => matches any of the characters included between the brackets. Matches exactly one character => [aeiou] , ca[nt]*: can, cat, candy, catch
# A Character classess => [!] => matches any of the characters NOT included between the brackets. Matches exactly one character => [aeiou] => baseball, cricket
# [a-g]* => start with a,b,c,d,e,f,g
# [3-6]*

# predefined named character classes
# •	[[:alpha:]] => alpha matches alphabetic letters. This means it matches both - lower and upper case letters.
# •	[[:alnum:]] => alnum or alnum matches alphanumeric characters. This means it matches alpha and digits. Said another way, it matches any uppercase or lowercase letters or any decimal digits.
# •	[[:digit:]] => 'digit' represents the numbers and decimal from 0 to 9.
# •	[[:lower:]] => 'lower' matches any lowercase letters.
# •	[[:space:]] => 'space' matches wide space. This means characters such as spaces, tabs and newline characters.
# •	[[:upper:]] => 'upper' only matches uppercase letters.

# *\? => match all files that end with the a question mark

#!/bin/bash
pattern() {
    ls *.txt
    ls a*
    ls a*.txt
    ls a*t
    ls ?
    ls ??
    ls a?.txt
    ls c[aeiou]t           #=> cat  cot
    ls c[ueoia]t           #=> cat  cot
    ls [a-d]*              #=> a aa b.txt cc.txt  d dd ddd
    ls *[[:digit:]]        #=>
    mv *.txt notes         #=> move all txt files to notes folder
    mv *.mp3 music/        #      => move all mp3 files to music folder
    mv *[[:digit:]] music/ #=> move all mp3 files to music folder

    echo "Invoked function temp"
    exit 0
}

# Wildcards are greate when you want to work on a group of files or directoories

function wildcards() {
    cd /var/www;
    cp $(*.html) /var/www-html/
    
    for FILE in $(*.html) do
        cp $FILE /var/www-html/
    done

    for FILE in $(/var/www/*.html) do
        cp $FILE /var/www-html/
    done
    exit 0
}