#!/bin/bash
while true
do
	IMAGE=$(ls $1 | sort -R | tail -n 1)
	gsettings set org.gnome.desktop.background picture-uri file:///$1/$IMAGE
	sleep $2
done
