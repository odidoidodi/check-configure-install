#1. Install brightnessctl and using it in BASH
#Work under Arch
#!/bin/bash
kbd=`brightnessctl --list | grep scrolllock | cut -d ' ' -f 2`
prefix="'"
suffix="'"
string=${kbd}
lightON=${string#"$prefix"}
lightON=${lightON%"$suffix"}
sleep 5 && brightnessctl --device="${lightON}" set 1

