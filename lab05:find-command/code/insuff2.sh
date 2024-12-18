#!/bin/bash

while read NAME SURNAME ID VOTE; [[ $? == 0 || ${NAME} != "" ]]; do
    if [[ ${VOTE} -lt 18 ]]; then
        LINES=`grep ${ID} RisultatiProvaPratica1.txt | wc -l`
        if [[ ${LINES} -eq 0 ]] ; then
            echo ${ID} ${NAME} ${SURNAME} ${VOTE}
        fi
    fi
done < RisultatiProvaPratica2.txt | sort -k 3
