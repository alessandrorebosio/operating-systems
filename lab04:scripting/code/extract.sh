#!/bin/bash

IFS=$',\n'
sum=0
while read A B C; do
    if [[ $A != "" && $C != "" ]]; then
        echo "${A},${C}"
    fi
    (( sum=sum+B ))
done < <(cat input.txt; echo "")

echo ${sum}