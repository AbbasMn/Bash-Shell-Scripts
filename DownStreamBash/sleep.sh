#!/bin/bash
# Direct Execute from root => $ ./tmp/sleep.sh
echo "      /// Down Stream: Sleep for 3 seconds ... "
sleep 3
# chmod a+x ./wakeup.sh
source ./DownStreamBash/wakeup.sh