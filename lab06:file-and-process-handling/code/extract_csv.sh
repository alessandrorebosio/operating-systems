#!/bin/bash

if (( $# < 2 )); then exit 1; fi

exec 103< ${1}
IFS=$',\n\t'

while read -u 103 LINE; do 
    index=1
    for data in $LINE; do
        if [[ ${index} -eq ${2} ]]; then
            echo ${data}
        fi
        (( index++ ))
    done
done

exec 103>&-
