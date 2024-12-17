#!/bin/bash

for (( i=1; i < $#; i++ )); do
    echo ${!i}
done

./script2.sh $@