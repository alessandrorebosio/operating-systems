#!/bin/bash

RESULT=0

for ((i=1; i < $#; i++)); do
    (( RESULT += ${!i} * ${!i} - ${i} ))
done

echo ${RESULT}
