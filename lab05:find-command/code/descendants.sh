#!/bin/bash

if (( $# != 1 )); then echo "no arguments..."; exit 1; fi
if (( "$1" < "0" )) ; then echo "arguments > 0" ; exit 1 ; fi

var=$1
for (( i=0; $i < ${var}; i++ )) ; do
    ./rec.sh $(( ${var}-1 )) &
done

wait
echo " ${var}"
