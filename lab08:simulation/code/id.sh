#!/bin/bash

cat exams.txt | grep -B 1 "OPERATIVI" | grep -v "OPERATIVI" | while read M C N; [[ $? == 0 || ${M} != "" ]]; do echo ${M}; done
