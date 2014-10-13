#!/bin/bash
if [ -z "$1" ]; then
	scalac -d ../bin/ *.scala
else
	scalac -d ../bin/ $([ -e "$1" ] && echo "$1" || echo $1".scala")
fi
