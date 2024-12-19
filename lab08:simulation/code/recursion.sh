#!/bin/bash

if read LINE ; then
	./recursion.sh
	echo "${LINE}"
fi
