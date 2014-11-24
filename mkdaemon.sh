#!/bin/bash
if [ -z $2 ]
then
	nohup $1 >/dev/null 2>&1 &
elif [ -z $3 ]
then
	nohup $1 >$2 2>&1 & 
else
	nohup $1 >$2 2>$3 & 
fi
