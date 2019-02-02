#!/bin/sh -e

# Lock screen displaying this image.
i3lock -i /home/oscarcp/Pictures/wallhaven-712682.png -t

# Turn the screen off after a delay.
sleep 60; pgrep i3lock && xset dpms force off
