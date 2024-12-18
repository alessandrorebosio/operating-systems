#!/bin/bash

print=0
while read NAME2 SURNAME2 ID2 VOTE2; [[ $? == 0 || ${NAME2} != "" ]]; do
    while read NAME1 SURNAME1 ID1 VOTE1; [[ $? == 0 || ${NAME1} != "" ]]; do
        if [[ ${VOTE2} -lt 18 ]]; then 
            if [[ ${ID1} == ${ID2} ]]; then 
                print=0
            fi
        fi
    done < RisultatiProvaPratica1.txt

    if [[ ${print} -eq 1 ]]; then
        echo ${NAME2} ${SURNAME2} ${ID2} ${VOTE2}
    fi
    print=1
done < RisultatiProvaPratica2.txt 
