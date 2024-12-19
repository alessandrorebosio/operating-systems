#!/bin/bash

if [[ $# -gt 9 ]]; then echo "troppi argomenti"; exit 1; fi

for (( i = 1; i <= $#; i++ )); do 
    if [[ -f ${!i} ]]; then
        if (( ${i} % 2 == 0 )); then
            cat ${!i} | wc -l
        else
            cat ${!i} | wc -l 1>&2 # redirect stdout to stderr
        fi
    fi

done
