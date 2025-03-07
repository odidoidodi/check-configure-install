#1. Install brightnessctl and using it in BASH
#Work under Arch
#!/bin/env bash
kbd=`ls /sys/class/leds/ | grep scrolllock`
echo `sleep 5 && brightnessctl --device="${kbd}" set 1`


