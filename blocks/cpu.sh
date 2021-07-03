#!/bin/bash
# CPU temperature
# CPU=$(sysctl -n hw.sensors.cpu0.temp0 | cut -d. -f1)
# Used and total storage in /home (rounded to 1024B)

read cpu a b c previdle rest < /proc/stat
prevtotal=$((a+b+c+previdle))
sleep 0.5
read cpu a b c idle rest < /proc/stat
total=$((a+b+c+idle))
cpu=$((100*( (total-prevtotal) - (idle-previdle) ) / (total-prevtotal) ))
icon="閭"
printf "%s %s \\n" "$icon" "$cpu%"
