#!/bin/bash

# Write a shell script that deletes all lines containing a specified word in one or more files supplied as arguments
# to it.

word="someword"
for i in "$@"
do
    if [ -e $1 ]
    then
        sed -i '/$word/d' $i
    else
        echo "File does not exist!"
    fi
done


