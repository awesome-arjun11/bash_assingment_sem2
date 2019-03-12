#!/bin/bash

# Write a shell script that accepts a list of file names as its arguments, counts and reports the occurrence of each
# word that is present in the first argument file on other argument files. 

for i in `cat $1`
do
    echo -e " word = $i"
    echo -e "************"
    grep -c "$i" $*
    echo -e "************"
done 
