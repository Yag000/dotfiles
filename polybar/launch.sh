#!/usr/bin/env bash

config_file="$HOME/.config/polybar/config.ini"

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use
# polybar-msg cmd quit
# Otherwise you can use the nuclear option:
killall -q polybar

# Launch bar1 and bar2
i=0
for m in $(polybar --list-monitors | cut -d":" -f1); do
    echo "---" | tee -a /tmp/polybar$i.log
    MONITOR=$m polybar --config="$config_file" --reload main 2>&1 | tee -a /tmp/polybar$i.log & disown
    #MONITOR=$m polybar --config="$config_file" --reload left 2>&1 | tee -a /tmp/polybarLeft$i.log & disown
    #sleep 0.1 # To get correct order
    #MONITOR=$m polybar --config="$config_file" --reload middle 2>&1 | tee -a /tmp/polybarMiddle$i.log & disown
    #sleep 0.1
    #MONITOR=$m polybar --config="$config_file" --reload rigth 2>&1 | tee -a /tmp/polybarRight$i.log & disown
    i=$((i+1))
done


echo "Bars launched..." 
