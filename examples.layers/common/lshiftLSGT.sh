#!/bin/sh

#note: if we use alt+shift to switch layout,
# then leftAlt + leftShift will generate lshift down/up and output LSGT !
#  to avoid this, just use rshift, or press shift BEFORE alt

# makes left shift output LSGT key when pressed/released
# used with 'special' kbd layouts, which use AngleZ ergo mod
# started in foreground mode (-f), press ctrl-c to stop
#xcape -f -e "Shift_L=#94"

# could let it run in background, more or less harmless
# (use 'pkill xcape' to stop it in that case)
xcape -e "Shift_L=#94"
