#!/bin/bash

NU_STD=()

if [ -t 1 ]; then
	NU_STD[0]=">/dev/null"
fi

if [ -t 2 ]; then
	NU_STD[1]="2>/dev/null"
fi

eval "$@ ${NU_STD[@]} &"
disown
