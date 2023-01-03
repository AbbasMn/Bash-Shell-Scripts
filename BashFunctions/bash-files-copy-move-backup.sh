#!/bin/bash

# Accepting User Input (STDIN)
# If you want to accept standard input use the read command. Remember that standard input typically comes from a person typing at the keyboard, 
# but it can also come from other sources like the output of a command in a command pipeline.

read -p "Enter the Password:" USER_PASSWORD
echo "User Credenetial is @USER_PASSWORD"
# Primary dir to scan
SRC_DIR=./BashFunctions/
DEST_DIR="${SRC_DIR}/temp/"
BACKUP_DIR="${SRC_DIR}/backup/"

FILE_TEMP_PREFIX=temp
FILE_BACKUP_PREFIX=backup
FILE_COPY_PREFIX=copy

# DETECTED_FILES= $(cd ./BashFunctions; ls *.jpg)

printf '\n\n'
printf '%s\n' "/// Files Copy, Move and Backup ///"

for PICTURE in $(cd ./BashFunctions; ls *.jpg) 
# for PICTURE in $($DETECTED_FILES) 
do
    # Move detected files
    # mv $SRC_DIR$PICTURE $DEST_DIR$FILE_TEMP_PREFIX-$PICTURE
    # echo "Move ${PICTURE} to $DEST_DIR$FILE_TEMP_PREFIX-$PICTURE"

    # Copy detected files
    # cp -rp $SRC_DIR$PICTURE $SRC_DIRR$FILE_COPY_PREFIX-$PICTURE 
    # echo "Copy ${PICTURE} to $SRC_DIRR$FILE_COPY_PREFIX-$PICTURE"

    Backup detected files
    cp $SRC_DIR$PICTURE $BACKUP_DIR$FILE_BACKUP_PREFIX-$PICTURE
    echo "Backup ${PICTURE} to $BACKUP_DIR$FILE_BACKUP_PREFIX-$PICTURE"
 done
