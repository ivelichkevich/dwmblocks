#!/bin/sh
# A dwm_bar function to display information regarding system memory

dwm_resources () {
    MEMUSED=$(free -h | awk '(NR == 2) {print $3}' | tr -d "i") # used
    MEMTOT=$(free -h |awk '(NR == 2) {print $2}' | tr -d "i")   # total
    echo -e " $MEMUSED/$MEMTOT" 
    #echo -e " $MEMUSED" 
}
dwm_resources
