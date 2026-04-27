#!/bin/bash
# Cycles HDMI-A-1 position relative to eDP-1 (builtin)
# Positions: above, right, below, left
# No negative coordinates used.

STATE_FILE="${XDG_RUNTIME_DIR:-/tmp}/monitor_position"

BUILTIN="eDP-1"
HDMI="HDMI-A-1"
BW=1920; BH=1080
HW=1920; HH=1080

current=$(cat "$STATE_FILE" 2>/dev/null || echo "above")

case "$current" in
    above)
        next="right"
        # HDMI above builtin: HDMI at (0,0), builtin at (0, HH)
        swaymsg "output $HDMI pos 0 0; output $BUILTIN pos 0 $HH"
        notify-send -t 2000 "Monitor: HDMI above builtin"
        ;;
    right)
        next="below"
        # HDMI right of builtin: builtin at (0,0), HDMI at (BW,0)
        swaymsg "output $BUILTIN pos 0 0; output $HDMI pos $BW 0"
        notify-send -t 2000 "Monitor: HDMI right of builtin"
        ;;
    below)
        next="left"
        # HDMI below builtin: builtin at (0,0), HDMI at (0, BH)
        swaymsg "output $BUILTIN pos 0 0; output $HDMI pos 0 $BH"
        notify-send -t 2000 "Monitor: HDMI below builtin"
        ;;
    left)
        next="above"
        # HDMI left of builtin: HDMI at (0,0), builtin at (HW,0)
        swaymsg "output $HDMI pos 0 0; output $BUILTIN pos $HW 0"
        notify-send -t 2000 "Monitor: HDMI left of builtin"
        ;;
esac

echo "$next" > "$STATE_FILE"
