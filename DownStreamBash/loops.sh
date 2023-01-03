#!/bin/bash
printf '\n\n'
printf '%s\n' "/// Loops ///"
for COLOR in red green blue 
do
    echo "$COLOR"
 don

printf '\n\n'
 for i in {1..5}
do
   echo "Welcome $i times"
done

printf '\n\n'
for i in 1 2 3 4 5
do
   echo "Welcome $i times"
done

printf '\n\n'
for i in {0..10..2}
do
  echo "Welcome $i times"
done


printf '\n\n'
for i in $(seq 1 2 20)
do
   echo "Welcome $i times"
done


printf '\n\n'
# set counter 'c' to 1 and condition 
# c is less than or equal to 5
for (( c=1; c<=5; c++ ))
do 
   echo "Welcome $c times"
done

printf '\n\n'
for (( ; ; ))
do
#    echo "infinite loops [ hit CTRL+C to stop]"
done


printf '\n\n'
for I in 1 2 3 4 5
do
  statements1      #Executed for all values of ''I'', up to a disaster-condition if any.
  statements2
  if (disaster-condition)
  then
    break              #Abandon the loop.
  fi
  statements3              #While good and, no disaster-condition.
done

printf '\n\n'
for file in /etc/*
do
    if [ "${file}" == "/etc/resolv.conf" ]
    then
        countNameservers=$(grep -c nameserver /etc/resolv.conf)
        echo "Total  ${countNameservers} nameservers defined in ${file}"
        break
    fi
done


printf '\n\n'
FILES="$@"
for f in $FILES
do
        # if .bak backup file exists, read next file
    if [ -f ${f}.bak ]
    then
        echo "Skiping $f file..."
        continue  # read next file and skip the cp command
    fi
        # we are here means no backup file exists, just use cp command to copy file
    /bin/cp $f $f.bak
done


printf '\n\n'
DB_AWS_ZONE=('us-east-2a' 'us-west-1a' 'eu-central-1a')
 
for zone in "${DB_AWS_ZONE[@]}"
do
  echo "Creating rds (DB) server in $zone, please wait ..."
  aws rds create-db-instance \
  --availability-zone "$zone"
  --allocated-storage 20 --db-instance-class db.m1.small \
  --db-instance-identifier test-instance \
  --engine mariadb \
  --master-username my_user_name \
  --master-user-password my_password_here
done