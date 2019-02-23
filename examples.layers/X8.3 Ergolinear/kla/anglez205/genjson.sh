#!/bin/sh

cat ./ref/qwerty205Anglez32.json \
  | ./txtkbd2kla altGr    ./ref/qwertyMain32.txt  $1-altGr.txt \
  | ./txtkbd2kla shift    ./ref/qwertyMain32.txt  $1-shift.txt \
  | ./txtkbd2kla primary  ./ref/qwertyMain32.txt  $1-main.txt \
  | ./txtkbd2kla 'label:' "$1 anglez" > $1_anglez.json
