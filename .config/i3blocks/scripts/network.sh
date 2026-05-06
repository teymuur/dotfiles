#!/bin/bash
# \uf1eb = wifi, \uf127 = disconnected
IFACE=$(ip route get 1.1.1.1 2>/dev/null | awk '{print $5; exit}')
if [[ -z "$IFACE" ]]; then
    ICON=$(printf '\uf127')
    echo "$ICON disconnected"
    exit 0
fi

SSID=$(iw dev "$IFACE" link 2>/dev/null | grep SSID | awk '{print $2}')
ICON=$(printf '\uf1eb')

if [[ -n "$SSID" ]]; then
    echo "$ICON ${SSID}"
else
    echo "$ICON ${IFACE}"
fi
