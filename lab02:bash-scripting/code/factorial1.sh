#!/bin/bash

NUM=$1
FACTORIAL=1

while [[ $NUM -ge 1 ]]; do 
    (( FACTORIAL *= NUM ))
    (( NUM-- ))
done 

echo ${FACTORIAL}
