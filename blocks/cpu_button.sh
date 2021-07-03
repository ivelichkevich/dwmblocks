#!/bin/sh

case "$1" in
    1) notify-send "閭CPU hogs" "$(ps axch -o cmd:15,%cpu --sort=-%cpu | head)\\n(100% per core)" ;;
    3) setsid -f "$TERMINAL" -e htop ;;
    6) "$TERMINAL" -e "$EDITOR" "$0" ;;
 esac
