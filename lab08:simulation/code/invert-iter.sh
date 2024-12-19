#!/bin/bash

if (( $# != 1 )) ; then echo "no arguments..."; exit 1; fi
if [[ ! -e $1 ]] ; then echo "file $1 doen't exits"; exit 1 fi

count=0
while read LINE ; do
    echo "$count ${LINE}"
    (( count++ ))
done < $1  | sort -n -r | while read COUNTER LINE ; do echo "$LINE"; done
