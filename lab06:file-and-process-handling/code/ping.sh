#!/bin/bash

touch ping.txt
./pong.sh &

while true; do
    while [ -f "pong.txt" ]; do
        sleep 5
    done

    echo ping

    rm ping.txt
    touch pong.txt
done
