#!/bin/bash

while read YEAR CITY CAUSE ABOUT; [[ $? == 0 || ${YEAR} != "" ]]; do
    NUM=`grep ${CAUSE} drop1.txt | wc -l`
    echo ${CAUSE} ${NUM}
done < drop1.txt | sort | uniq
