#!/bin/sh
set -e
xset s off dpms 0 10 0
swaylock --clock --indicator
xset s off -dpms
