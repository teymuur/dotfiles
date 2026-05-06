#!/bin/bash
# \uf1c0 = database icon
ICON=$(printf '\uf1c0')
used=$(free -h | awk '/^Mem:/ {print $3}')
echo "$ICON ${used}"
