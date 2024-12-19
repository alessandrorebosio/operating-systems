#!/bin/bash

if (( $# < 2 )); then echo "argumnets < 2..."; exit 1; fi

while read N L A P; [[ ${N} != "" || $? == 0 ]]; do
    if [[ ${L} -ge ${1} && ${A} -le ${2} ]]; then 
        echo ${N} ${L} ${A} ${P}
    fi    
done < sofa.txt
