#!/bin/bash
# $1=parameter1=sourceDirectory
# $2=parameter2=FilesExtentions:

# You can access all the positional parameters starting at $1 to the very last one 
# on the command line by using the special variable $@.
printf '\n\n'
printf '%s\n' "/// All Recived Parameters ///"
for PARAM in $@
do
    echo "Recived parameter: $PARAM"
done


printf '\n\n'
printf '%s\n' "/// Files Copy, Move and Backup ///"
# Primary dir to scan
SRC_DIR=$1
echo "Dynamic Files source Directory: $1"

DEST_DIR="${SRC_DIR}/temp/"
BACKUP_DIR="${SRC_DIR}/backup/"

FILE_TEMP_PREFIX=temp
FILE_BACKUP_PREFIX=backup
FILE_COPY_PREFIX=copy

FILE_EXTENTIONS=jpg
echo "Files Extentions: $2"

for PICTURE in $(cd ./BashFunctions; ls *.$FILE_EXTENTIONS) 
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
