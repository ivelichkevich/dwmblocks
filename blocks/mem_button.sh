#!/bin/sh

case "$1" in
    1) notify-send " Memory hogs" "$(ps axch -o cmd:15,%mem --sort=-%mem | head)" ;;
    2) setsid -f "$TERMINAL" -e htop ;;
    3) notify-send " Memory module" "\- Shows Memory Used/Total.  - Click show memory hogs.  - Middle click to open htop." ;;
    6) "$TERMINAL" -e "$EDITOR" "$0" ;;
esac
