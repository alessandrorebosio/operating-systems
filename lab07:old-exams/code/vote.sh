#!/bin/bash

while read ID2 VOTE2; [[ $? == 0 || ${ID2} != "" ]]; do
    echo ${ID2} ${VOTE2}
done < esame2.txt

while read ID1 VOTE1; [[ $? == 0 || ${ID1} != "" ]]; do
    found=true
    while read ID2 VOTE2; [[ $? == 0 || ${ID2} != "" ]]; do
        if [[ ${ID1} -eq ${ID2} ]]; then
            found=false
        fi
    done < esame2.txt
    if [[ ${found} == true ]]; then 
        echo ${ID1} ${VOTE1}
    fi
done < esame1.txt 
