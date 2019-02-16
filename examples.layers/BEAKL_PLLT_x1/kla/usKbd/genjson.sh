#!/bin/sh

cat ./ref/qwertyMain30.json \
  | ./ref/txtkbd2kla shiftAltGr  ./ref/qwertyMain30.txt       BEAKL_PLLT_x1-shiftAltGr.txt \
  | ./ref/txtkbd2kla altGr       ./ref/qwertyMain30.txt       BEAKL_PLLT_x1-altGr.txt \
  | ./ref/txtkbd2kla shift       ./ref/qwertyMain30.txt       BEAKL_PLLT_x1-shift.txt \
  | ./ref/txtkbd2kla primary     ./ref/qwertyMain30.txt BEAKL_PLLT_x1-main.txt \
  | ./ref/txtkbd2kla 'author:' "Amuseum" \
  | ./ref/txtkbd2kla 'label:' "BEAKL_PLLT_x1 US Kbd" > BEAKL_PLLT_x1_UsKbd.json
