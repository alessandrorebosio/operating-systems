#!/bin/bash

echo "PID: $$ INDEX: ${start}"

if [[ $start -lt $end ]]; then
    (( start++ ))
    ./son.sh 
fi
