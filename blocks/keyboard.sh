#!/bin/sh
# A dwm_bar function that displays the current keyboard layout
# Dependencies: xorg-setxkbmap and  yay xkblayout-state
xkblayout-state print "%s" | awk '{print toupper($0)}'

