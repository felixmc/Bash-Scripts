#!/bin/bash
INTERVAL=$([ -n "$1" ] && echo "$1" || echo "150")
su -c "while true; do service thinkfan restart && echo 'restarted fan at: '$(date +%T); sleep $INTERVAL; done"
