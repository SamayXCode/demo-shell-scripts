#!/bin/bash

<<disclaimer

this is a shell script 
to create users

disclaimer

echo "============== Creation of User =========="

read -p "enter the username?" username

read -p "enter the password?" password

sudo useradd -m "$username"

echo -e "$password\n$password" | sudo passwd "$username"

count=$(cat /etc/passwd | grep $username | wc | awk '{print $1}')
if [ $count == 0 ];
then
        echo "$username does not exists."
else
        echo "$username exists."
fi 

echo "================ creation of user completed ================"
sudo userdel -r $username 2> /dev/null

count=$(cat /etc/passwd | grep $username | wc | awk '{print $1}')
if [ $count == 0 ];
then
	echo "$username does not exists."
else
	echo "$username exists."
fi
echo "================deletion of user completed ================="
