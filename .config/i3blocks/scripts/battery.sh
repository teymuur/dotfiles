#!/bin/bash
# \uf240-\uf244 = battery full->empty, \uf0e7 = bolt (charging), \uf00c = check (full)
CAP=$(cat /sys/class/power_supply/BAT0/capacity)
STATUS=$(cat /sys/class/power_supply/BAT0/status)

if [[ "$STATUS" == "Charging" ]]; then
    ICON=$(printf '\uf0e7')
elif [[ "$STATUS" == "Full" ]]; then
    ICON=$(printf '\uf240')
elif (( CAP >= 80 )); then
    ICON=$(printf '\uf240')
elif (( CAP >= 60 )); then
    ICON=$(printf '\uf241')
elif (( CAP >= 40 )); then
    ICON=$(printf '\uf242')
elif (( CAP >= 20 )); then
    ICON=$(printf '\uf243')
else
    ICON=$(printf '\uf244')
fi

if (( CAP <= 20 )) && [[ "$STATUS" != "Charging" ]]; then
    echo "$ICON ${CAP}%"
    echo "$ICON ${CAP}%"
    echo "#ff5555"
else
    echo "$ICON ${CAP}%"
fi
