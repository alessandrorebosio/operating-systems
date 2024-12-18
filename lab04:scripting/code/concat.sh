#!/bin/bash

echo -n "" > output.txt

NUM=0
for item in /usr/include/std*; do
    if [[ -d "${item}" ]]; then
        if exec {FD}<${item} ; then
            while read -u ${FD} LINE ; do
                (( NUM++ ))
                if (( $NUM > 1 )) ; then
                    echo "$LINE" >> output.txt
                fi
                if (( $NUM >= 4 )) ; then
                    break;
                fi
            done
            exec {FD}>&-
        fi
    fi
done
