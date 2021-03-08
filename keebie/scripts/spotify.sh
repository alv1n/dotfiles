#!/usr/bin/bash
# Focuses spotify

#launch if spotify not yet running
#if [[  -z "pgrep spotify" ]]
if ! pgrep "spotify" > /dev/null
then 
        spotify &
fi

# When spotify is playing music, the title bar displays artist -track
# This if statement makes sure that the window containing the artist name gets focused
if [ "$playerctl -p spotify status" == "Paused" ]
then
    wmctrl -a Spotify 
else
    CUR_ART=$(playerctl -p spotify metadata | grep artist | cut -d ' ' -f2- |cut -d ' ' -f2-)
    wmctrl -a $CUR_ART
fi
