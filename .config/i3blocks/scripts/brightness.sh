#!/bin/bash
# \uf185 = sun icon
ICON=$(printf '\uf185')
BACKLIGHT_DIR="/sys/class/backlight/intel_backlight"
MAX=$(cat "$BACKLIGHT_DIR/max_brightness")
CUR=$(cat "$BACKLIGHT_DIR/brightness")
PCT=$(( CUR * 100 / MAX ))
echo "$ICON ${PCT}%"
