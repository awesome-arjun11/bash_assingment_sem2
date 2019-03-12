#!/bin/bash

#Write a shell script that accepts a file name, starting and ending
#line numbers as arguments and displays all the lines between the given line numbers
if [ -e $1 ]
then
    sed -n $2,$3p $1
else
    echo "File does not exist!"
fi

