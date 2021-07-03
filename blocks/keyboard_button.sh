#!/bin/sh
case "$1" in
    1) x=$(xkblayout-state print "%c" | cut -b1 )
        x ^= 1
        xkblayout-state set x
        ;;
    #3) exec pavucontrol ;; # Cmd + Click on Mac
    #2) pamixer --set-volume 50 ;;
    #4) /usr/bin/pactl set-sink-volume 0 +5% ;;
    #5) /usr/bin/pactl set-sink-volume 0 -5% ;;
esac

