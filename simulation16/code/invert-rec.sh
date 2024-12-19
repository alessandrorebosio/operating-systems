#!/bin/bash

if (( $# != 1 )) ; then echo "no arguments..."; exit 1; fi
if [[ ! -e $1 ]] ; then echo "file $1 doen't exits"; exit 1 fi

./recursion.sh < $1