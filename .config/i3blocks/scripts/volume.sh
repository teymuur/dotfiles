#!/bin/bash
# \uf026 = vol-off, \uf027 = vol-down, \uf028 = vol-up, \uf6a9 = vol-mute
VOL=$(amixer sget Master | grep -o '[0-9]*%' | head -1)
MUTED=$(amixer sget Master | grep -o '\[off\]')

if [[ -n "$MUTED" ]]; then
    ICON=$(printf '\uf6a9')
    echo "$ICON muted"
else
    PCT=${VOL%%%}
    if (( PCT == 0 )); then
        ICON=$(printf '\uf026')
    elif (( PCT < 50 )); then
        ICON=$(printf '\uf027')
    else
        ICON=$(printf '\uf028')
    fi
    echo "$ICON ${VOL}"
fi
