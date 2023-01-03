#!/bin/bash
printf '\n\n'
printf '%s\n' "/// Up and Down Streams ///"
echo "Main Stream: Sleep for 2 seconds ..."
sleep 2
echo "  Main Stream: Wake Up"
# Direct Execute from root => $ ./tmp/sleep.shsleep.sh

# Execute (Invoke) downstream bash code (file) from upstream bash code (file)
# Make the other script executable => chmod a+x ./DownStreamBash/sleep.sh
chmod a+x ./DownStreamBash/sleep.sh

# call it with sh command
sh ./DownStreamBash/sleep.sh

# Or call it with bash command
bash ./DownStreamBash/sleep.sh

# Or call it with the source command (which is an alias for .)
source ./DownStreamBash/sleep.sh