#!/bin/bash

for name in {c..g}; do
   for dir in /usr/include/?*$name*; do
      if [[ -e ${dir} && (${#dir} -lt 18 || ${#dir} -gt 23) ]]; then
         echo $dir
      fi
   done
done
