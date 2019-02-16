#!/bin/sh

cat ./ref/qwertyMain31.json \
  | ./ref/txtkbd2kla altGr       ./ref/qwertyMain30.txt       beakl15-altGr.txt \
  | ./ref/txtkbd2kla shift       ./ref/qwertyMain30.txt       beakl15-shift.txt \
  | ./ref/txtkbd2kla primary     ./ref/qwertyMain31+digits.txt beakl15-main.txt \
  | ./ref/txtkbd2kla 'author:' "Amuseum" \
  | ./ref/txtkbd2kla 'label:' "BEAKl15 US Kbd" > beakl15UsKbd.json
