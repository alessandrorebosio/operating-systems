#!/bin/bash

FACTORIAL=1

if (( ${FACTORIAL} > 1 )) ; then
    (( RIS *= ${FACTORIAL} ))
    (( FACTORIAL-- ))
    source ./fattoriale1.sh "${FACTORIAL}"
fi
