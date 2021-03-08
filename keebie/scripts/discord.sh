#!usr/bin/bash
if ! pgrep "discord" > /dev/null
then 
        discord &
fi
wmctrl -a Discord 
