#!/usr/bin/bash
# Focuses shadow 

#launch if shadow not yet running
if ! pgrep "shadow" > /dev/null
then 
    AppImageLauncher /media/Storage/Documents/Shadow/Shadow_3773de9808756ca413f984cd6c81a1aa.AppImage        &
fi

wmctrl -a shadow
