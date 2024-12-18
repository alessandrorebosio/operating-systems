#!/bin/bash

if [[ $# == 0 ]]; then exit 1; fi

NA=0; NB=0;
for (( i=0; i < ${#1}; i++ )); do
    char=${1:${i}:1}

    if [[ ${char} == "A" ]]; then
        (( NA++ ))
    elif [[ ${char} == "B" ]]; then
        (( NB++ ))
    fi
done

if (( NA + NB == ${#1} && NA == NB )); then
    echo true
else
    echo false
fi
