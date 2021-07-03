#!/bin/sh
# A dwm_bar function to display information regarding storage

dwm_resources () {
    STOUSED=$(df -h | grep '/$' | awk '{print $3}')
    STOTOT=$(df -h | grep '/$' | awk '{print $2}')
    STOPER=$(df -h | grep '/$' | awk '{print $5}')
    printf "  %s/%s: %s" "$STOUSED" "$STOTOT" "$STOPER"
}
dwm_resources
