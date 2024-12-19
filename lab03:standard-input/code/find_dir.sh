#!/bin/bash

for item in `ls /usr/include`; do
    if test -d ${item} -a -r ${item} -a ${item} -nt "/usr/include/stdio.h"; then
        echo ${item}
    fi
done
