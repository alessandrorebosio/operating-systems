#!/bin/bash

FACTORIAL=1

if (( ${FACTORIAL} > 1 )) ; then
    (( RIS=${RIS}*${FACTORIAL} ))
    (( FACTORIAL-- ))
    source ./fattoriale1.sh "${FACTORIAL}"
fi