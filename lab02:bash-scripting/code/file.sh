#!/bin/bash

for item in `ls`; do if [[ $? -eq 0 ]]; then echo ${item}; else echo "ls failed"; fi; done
