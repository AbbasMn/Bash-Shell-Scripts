#!/bin/bash
printf '\n\n'
printf '%s\n' "/// Config ///"
SERVER_NAME="$HOSTNAME"
# printf '%s\n' "$HOSTNAME"
printf '%s\n' "Server Name is: ${SERVER_NAME}"

if [ "$HOSTNAME" = Hadaf-Edu ]; then
    printf '%s\n' "So we're on the right host"
else
    printf '%s\n' "So we're not on Hadaf-Edu"
fi