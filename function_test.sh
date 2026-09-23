#!/bin/bash

<<info
this is an exploration of function
info

function create_user {

read -p "Enter the username: " username

sudo useradd -m $username

echo "user crated successfully."

sudo userdel -r $username 2> /dev/null
echo "user deleted successfully"
}

for (( i=1 ; i<=5 ; i++ ))
do 
	create_user
done
