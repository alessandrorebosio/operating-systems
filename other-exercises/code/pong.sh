#!/bin/bash

while true; do
    while [ -f "ping.txt" ]; do
        sleep 5
    done

    echo pong
    rm pong.txt
    touch ping.txt
done
