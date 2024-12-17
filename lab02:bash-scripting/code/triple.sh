#!/bin/bash

for x in `ls`; do
    for y in `ls`; do
        for z in `ls`; do
            echo "(${x};${y};${z})"
        done
    done
done