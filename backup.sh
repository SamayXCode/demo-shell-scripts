#!/bin/bash

<<info
This shell script wil take periodic backups

eg
./backup.sh <dest> <src>
info

dest=$1
src=$2

timestamp=$(date '+%Y-%m-%d-%H:%M')

zip -r "$dest/backup-$timestamp.zip" $src
