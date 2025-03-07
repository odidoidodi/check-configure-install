#1. Install brightnessctl and use it in BASH.
#It's needed to activate "Map Scroll Lock to mod3" in KDE 6 keyboard options to eliminate conflicts when the user presses Caps Lock.
#Work under Arch

#!/bin/env bash
kbd=`ls /sys/class/leds/ | grep scrolllock`
echo `sleep 5 && brightnessctl --device="${kbd}" set 1`


