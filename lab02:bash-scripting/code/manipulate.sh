#!/bin/bash

mkdir -p ~/DELETEME
cd ~/DELETEME || exit
touch '*' '**' '***' ';;'

for file in *; do
  cp "$file" "$file.txt"
done

cp -r /usr/include ~/DELETEME
find ~/DELETEME -type d
rm -rf ~/DELETEME/include