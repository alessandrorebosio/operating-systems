#!/bin/bash

index=0; even=0; odd=0
while read number; do
    if (( ${index} % 2 == 0 )); then 
        (( even += number ))
    else
        (( odd += number ))
    fi

    (( index++ ))
done < <(cat numbers.txt; echo "";)

echo "even: "${even} "odd: "${odd}
