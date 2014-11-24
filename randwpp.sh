#!/bin/bash

if [ -z $1 ]
then
	WPP_DIR=/home/felix/Pictures/wallpapers/
else
	WPP_DIR=$1
fi

IMAGE=$(ls $WPP_DIR | sort -R | tail -n 1)
gsettings set org.gnome.desktop.background picture-uri file:///$WPP_DIR/$IMAGE
