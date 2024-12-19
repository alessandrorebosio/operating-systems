#!/bin/bash

while read LINE; [[ $? == 0 || ${LINE} != "" ]]; do
    HALF=${LINE#\"*\"*\"*\"}
    CAUSE=${HALF%\"*\"*\"}\"
	echo CAUSE is ${CAUSE}
done < drop2.txt | uniq
