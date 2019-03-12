#!/bin/bash

# Write a shell script that receives any number of file names as arguments checks if every argument supplied is
# a file or a directory and reports accordingly. Whenever the argument is a file, the number of lines on it is also
# reported. 
for i in "$@"
do
    if [[ -d $i ]]; then
        echo "$i is a directory"
    elif [[ -f $i ]]; then
        echo "$i is a file with `wc -l < $i` lines"
    else
        echo "$i is not valid"
    fi
done
