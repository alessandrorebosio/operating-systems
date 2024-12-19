#!/bin/bash

# nella forma: NumeroVolteCheQuelCarattereCompare Carattere

if (( $# == 0 )) ; then echo "serve argomento"; exit 0; fi

string=$@
for (( i = 0; i < ${#string}; i++ )); do 
    echo ${string:${i}:1}
done | sort | uniq -c | while read N L; do echo ${L} ${N}; done
