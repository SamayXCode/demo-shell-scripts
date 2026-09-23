#!/bin/bash
 
#user definde variables
hero="rancho"
villain="viurs"

echo "3 idiots ka hero hai $hero"

echo "3 idiots ka villain haI $villain"
 
# shell/ environment variables bhi hote hai pre-defind variable

echo "current loged in user $USER"

# user input

read -p "rancho ko pura naam tha?" fullname

echo "Rancho ka poora name $fullname tha"

# arguments

# ./3_idiots.sh raju farhan rancho

echo "movie ka name: $0"

echo "first idiot: $1"

echo "second idiot: $2"

echo "third idiot: $3"

echo "the total number of idiots: $#"

echo "Hence the 3 idiots are $@"
