#!/bin/bash

prec=-1; count=0

while read N C MULTA G M A; [[ $? == 0 || ${MULTA} != "" ]]; do
    if [[ ${prec} != ${MULTA} ]]; then
        if [[ ${count} -ge 1 ]]; then
            echo ${prec} ${count}
        fi
        (( prec = MULTA ))
        count=0
    fi
    (( count++ ))
done

if [[ ${count} -ge 1 ]]; then
    echo ${prec} ${count}
fi
