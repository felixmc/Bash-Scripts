#!/bin/bash

if [ -z $1 ]
then
	DIR=$WPP_DIR
else
	DIR=$1
fi

IMAGE=$(ls $DIR | sort -R | tail -n 1)
gsettings set org.gnome.desktop.background picture-uri file:///$DIR/"$IMAGE"
