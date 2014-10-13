#!/bin/bash
xinput --list | grep "$1.*slave[[:space:]]\{1,2\}pointer" | grep -Po '\d+' | awk 'NR%2==1 {print "xinput --set-prop "$1" \"Device Accel Constant Deceleration\" $2"}' | while read line ; do eval $line ; done
