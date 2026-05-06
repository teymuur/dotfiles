#!/bin/bash
# \uf017 = clock, \uf073 = calendar
CLOCK=$(printf '\uf017')
CAL=$(printf '\uf073')
echo "$CLOCK $(date '+%H:%M:%S')  $CAL $(date '+%a %d %b')"
