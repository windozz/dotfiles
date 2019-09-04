#!/bin/bash

#BACKGROUND="#282A36"
BACKGROUND="#B0000000"
FOREGROUND="#DCDCDC"

while true; do
    TIME=$(date "+%a %I:%M")
    BATPERC=$(acpi --battery | cut -d " " -f4 | cut -d "%" -f1)
    SONG=$(spotifycli --status)
    WIFI="%{A:x-terminal-emulator nmtui-connect:}\uf1eb%{A}"
    SPEAKERS="%{A:pavucontrol -t 3:}\uf028%{A}"
    DISCORD_PID=$(pgrep Discord)

    # choose battery icon according to percentage
    if [ $BATPERC -gt 90 ]; then
        BATICON="\uf240"
    elif [ $BATPERC -gt 75 ]; then
        BATICON="\uf241"
    elif [ $BATPERC -gt 40 ]; then
        BATICON="\uf242"
    elif [ $BATPERC -gt 25 ]; then
        BATICON="\uf243"
    else
        BATICON="\uf244"
    fi

    # display music if spotify is playing
    if [ ! -z "$SONG" ]; then
        MUSIC="%{A:spotifycli --next:}%{A3:spotifycli --playpause:}\uf001 $SONG%{A}%{A}"
    else
        MUSIC="\uf001"
    fi

    # display the Discord icon if it's running
    if [ ! -z "$DISCORD_PID" ]; then
        DISCORD="%{A:discord:}%{A3:killall -s 9 Discord:}\uf392%{A}%{A} "
    else
        DISCORD=""
    fi

    echo -e "%{Sl}%{l B$BACKGROUND F$FOREGROUND}  $MUSIC%{c}\uf017 $TIME%{r}$DISCORD$WIFI $SPEAKERS $BATICON  %{B$BACKGROUND}"
    sleep 0.5s
done

