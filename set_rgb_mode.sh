#!/bin/bash

# Fix washed colors in external screens with intel i915 driver
# with these commands

sleep 15
xrandr --output HDMI1 --set "Broadcast RGB" "Full"
xrandr --output DP2 --set "Broadcast RGB" "Full"

