#!/bin/bash

even=""; odd=""
for (( i=1; i < $#; i++ )); do
    if (( i % 2 == 0 )); then
        even+=${!i}
    else
        odd+=${!i}
    fi
done

echo "even: "${even} "odd: "${odd}