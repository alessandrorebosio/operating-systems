#!/bin/bash

exec {FD}< /usr/include/stdio.h

while read -u ${FD} A B C; [[ $? == 0 ]] do 
    echo ${C:1:1}
done

exec {FD}>&-
