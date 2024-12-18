#!/bin/bash

FILES=`find /usr/include/linux/ -mindepth 2 -name "*.h" -print`

if [[ -z ${FILES} ]] ; then
    echo "nothig found"
else
    for RECENTE in ${FILES} ; do # assegno il primo
        break
    done
    for NAME in ${FILES} ; do
        if [[ ${RECENTE} -ot ${NAME} ]] ; then
            RECENTE=${NAME}
        fi
    done
fi

echo "il file piu' recente e' ${RECENTE}"