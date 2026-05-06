#!/bin/bash
# \uf2db = microchip icon
ICON=$(printf '\uf2db')
read cpu a b c idle rest < /proc/stat
sleep 0.2
read cpu2 a2 b2 c2 idle2 rest2 < /proc/stat
total=$(( (a2+b2+c2+idle2) - (a+b+c+idle) ))
used=$(( total - (idle2 - idle) ))
pct=$(( used * 100 / total ))
echo "$ICON ${pct}%"
