#!/bin/bash
printf '\n\n'
printf '%s\n' "/// While Loops ///"
#  This condition could be some sort of test, such as checking to see if a variable has a certain value or checking to see 
#  if a file exists, for example. The condition could also be any command. If the command succeeds and returns a zero exit 
#  status, then the while loop will continue. When the command fails and returns a nonzero exit status, the condition is false
#   and the while loop stops. 
INDEX=1
while [ $INDEX -lt 10 ]
do
  echo "Counter is $INDEX"
  INDEX=$(($INDEX+1))
done

while [ "$CORRECT" != "y" ]
do
  read -p "Enter your name: " NAME
  read -p "is $NAME correct?  " CORRECT
done

# If the condition that is being tested always returns true, then the while loop will never exit. If this happens, 
# you'll need to interrupt the script by hitting control-C.
# if you're running it interactively from the command line. Otherwise you'll need to use the kill command to kill the process. 
# Typically, when this happens it's due to a bug and logic error in the script


# Run ascript that runs on a database server and performs some sort of maintenance or backup
# Let's say you have a script that runs on a database server and performs some sort of maintenance or backup. 
# Let's make that script wait until the application server is off the network before it continues. 
# This way we can know that the application is not actively using the database while we are performing our maintenance.  
# We do this by using the ping command. Using -c1 causes a count of one packet to be sent to the server. 
# We also redirect the output to /dev/null since we don't really need to see the output.  
# If the ping command succeeds, then an exit status of zero is returned. If it fails, then a nonzero exit status is returned. While the server is pingable the condition is true and the loop continues. Once the ping command fails, the script continues.


# Infinit Loop
# If you want to create some type of service or daemon you can use this technique. You would simply start your
# shell script in the background and it would continually run until it was killed. When you do this, 
# there are typically a series of commands in the while loop and then a sleep command to pause the execution of the script 
# for a given number of seconds.

# while [ true ] 
# do
#   sleep 1
# done

printf '\n\n'
printf '%s\n' "/// For Loops ///"
# for COLOR in red green blue 
# do
#     echo "$COLOR"
#  don

# printf '\n\n'
#  for i in {1..5}
# do
#    echo "Welcome $i times"
# done

# printf '\n\n'
# for i in 1 2 3 4 5
# do
#    echo "Welcome $i times"
# done

# printf '\n\n'
# for i in {0..10..2}
# do
#   echo "Welcome $i times"
# done


# printf '\n\n'
# for i in $(seq 1 2 20)
# do
#    echo "Welcome $i times"
# done


# printf '\n\n'
# # set counter 'c' to 1 and condition 
# # c is less than or equal to 5
# for (( c=1; c<=5; c++ ))
# do 
#    echo "Welcome $c times"
# done

# printf '\n\n'
# for (( ; ; ))
# do
# #    echo "infinite loops [ hit CTRL+C to stop]"
# done


# printf '\n\n'
# for I in 1 2 3 4 5
# do
#   statements1      #Executed for all values of ''I'', up to a disaster-condition if any.
#   statements2
#   if (disaster-condition)
#   then
#     break              #Abandon the loop.
#   fi
#   statements3              #While good and, no disaster-condition.
# done

# printf '\n\n'
# for file in /etc/*
# do
#     if [ "${file}" == "/etc/resolv.conf" ]
#     then
#         countNameservers=$(grep -c nameserver /etc/resolv.conf)
#         echo "Total  ${countNameservers} nameservers defined in ${file}"
#         break
#     fi
# done


# printf '\n\n'
# FILES="$@"
# for f in $FILES
# do
#         # if .bak backup file exists, read next file
#     if [ -f ${f}.bak ]
#     then
#         echo "Skiping $f file..."
#         continue  # read next file and skip the cp command
#     fi
#         # we are here means no backup file exists, just use cp command to copy file
#     /bin/cp $f $f.bak
# done


# printf '\n\n'
# DB_AWS_ZONE=('us-east-2a' 'us-west-1a' 'eu-central-1a')
 
# for zone in "${DB_AWS_ZONE[@]}"
# do
#   echo "Creating rds (DB) server in $zone, please wait ..."
#   aws rds create-db-instance \
#   --availability-zone "$zone"
#   --allocated-storage 20 --db-instance-class db.m1.small \
#   --db-instance-identifier test-instance \
#   --engine mariadb \
#   --master-username my_user_name \
#   --master-user-password my_password_here
# done