#!/bin/bash
printf '\n\n'
printf '%s\n' "/// Test Conditional Expression ///"


if [ 100 -eq 200 ]; then
    echo "100 equal 200";
    elif [ 100 -le 200 ]; then
    echo "elseif => 100 less than 200";
    else
    echo "else => 100 greather than 200";
fi

printf '\n\n'
printf '%s\n' "/// File Condition Check Out ///"
resin_dir=./DownStreamBash/sleep.sh

# -d file: True => if file is a directory
# -e and -a file: True => if file is exists
# -f file: True => if file is exists and is a regular file
# -r file: True => if file is readable by you
# -s file: True => if file is exists and is not empty
# -w file: True => if file is writeable by you
# -x file: True => if file is executable by you

# Both about -a and -e options in Bash documentation is said:

# -a file
#     True if file exists.
# -e file
#     True if file exists. 

if [ -e ${resin_dir} ] ; then
    echo "Exists: "${resin_dir};
fi

if [ ! -e ${resin_dir} ] ; then
    echo "!Exists:" ${resin_dir};
fi

# if [ -a ${resin_dir} ] ; then
#     echo "Exists: "${resin_dir};
# fi

# if [ ! -a ${resin_dir} ] ; then
#     echo "!Exists:" ${resin_dir};
# fi

if [ -d ${resin_dir} ] ; then
    echo "is a directory: "${resin_dir};
fi

if [ -f ${resin_dir} ] ; then
    echo "Exists and is a regular file: "${resin_dir};
fi

if [ -r ${resin_dir} ] ; then
    echo "is readable by you: "${resin_dir};
fi

if [ -s ${resin_dir} ] ; then
    echo "Exists and is not empty: "${resin_dir};
fi

if [ -w ${resin_dir} ] ; then
    echo "is writeable by you: "${resin_dir};
fi

if [ -x ${resin_dir} ] ; then
    echo "is executable by you: "${resin_dir};
fi

printf '\n\n'
printf '%s\n' "/// String Condition Check Out ///"
if [ -z ${resin_dir} ] ; then
    echo "String is empty";
fi

if [ -n ${resin_dir} ] ; then
    echo "String is not empty";
fi

if [ abbas=abbas ] ; then
    echo "Strings are equal";
fi

if [ abbas!=Abbas ] ; then
    echo "Strings are not equal";
fi

printf '\n\n'
printf '%s\n' "/// Arithmatic Operators in Condition Check Out ///"
if  [ 5 -eq 5 ] ; then
    echo "5 equal 5";
fi
if  [ 5 -ne 6 ] ; then
    echo "5 not equal 6";
fi
if  [ 5 -lt 7 ] ; then
    echo "5 lower than 7";
fi
if  [ 5 -le 5 ] ; then
    echo "5 lower than 7";
fi
if  [ 8 -gt 7 ] ; then
    echo "8 greather than 7";
fi
if  [ 5 -ge 5 ] ; then
    echo "8 greather and equal than 8";
fi