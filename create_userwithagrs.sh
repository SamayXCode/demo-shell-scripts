#!/bin/bash

<<disclaimer

this is a shell script 
to create users

disclaimer

echo "============== Creation of User =========="

sudo useradd -m "$1"

echo -e "$2\n$2" | sudo passwd "$1"

echo "============== creation of user completed ================"
