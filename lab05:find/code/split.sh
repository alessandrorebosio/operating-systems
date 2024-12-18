#!/bin/bash

count=0
for (( i = 0; i < ${#PATH}; i++ )); do 
    char=${PATH:${i}:1}
    if [[ ${char} == ':' ]]; then
        echo " ${count}"
        (( count= 0 ))
    else
        echo -n ${char}
        (( count++ ))
    fi
done

echo " $count"