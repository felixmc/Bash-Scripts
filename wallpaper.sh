#!/bin/bash

re='^[0-9]+$'

DIR=$WPP_DIR
DELAY=120

if [[ $1 =~ $re ]]
then
	DELAY=$1
elif [ -z $2 ]
then
	DIR=$1
else
	DIR=$1
	DELAY=$2
fi

while true
do
	randwpp $DIR
	sleep $DELAY
done
