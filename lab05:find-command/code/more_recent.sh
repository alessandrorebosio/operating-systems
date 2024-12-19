#!/bin/bash

FILES=`find /usr/include/linux/ -mindepth 2 -name "*.h" -print`

if [[ -z ${FILES} ]] ; then
    echo "nothig found"
else
    for RECENT in ${FILES} ; do # assegno il primo
        break
    done
    for NAME in ${FILES} ; do
        if [[ ${RECENT} -ot ${NAME} ]] ; then
            RECENT=${NAME}
        fi
    done
fi

echo "il file piu' recente e' ${RECENT}"
