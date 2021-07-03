#!/bin/sh

volstat=$(pamixer --get-mute --get-volume)

if "${volstat% *}" ; then
    echo -e " ${volstat#* }%"
else
    echo -e " ${volstat#* }%"
fi
