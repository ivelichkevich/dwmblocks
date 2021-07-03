#!/bin/bash
#224-255

for j in $(seq $1 $2); do 
    left=$(printf "%02X" $j);
    for i in $(seq 0 255); do 
        right=$(printf "%02X" $i);
        echo -ne " ";
        echo -ne "\x$left\x$right" | iconv -f utf-16be;
        n=$((i % 40));
        if [[ $n -eq 0 ]]; then echo -ne "\n"; fi
    done
done
