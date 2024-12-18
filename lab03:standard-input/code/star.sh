#!/bin/bash

while read A B C D; [[ $? == 0 || ${A} != "" ]]; do
    echo ${D} ${C}
done < stars.txt
