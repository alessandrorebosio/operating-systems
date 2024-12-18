#!/bin/bash

if (( $# < 2 )); then exit 1; fi

for item in `ls $1`; do
    if [[ -s ${item} ]]; then
        cp $item ${item}.txt
    fi
done