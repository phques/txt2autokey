#!/bin/sh

cat ./ref/qwerty205Anglez31.json \
  | ./txtkbd2kla shiftAltGr ./ref/qwertyMain31.txt  $1Anglez-shiftAltGr.txt \
  | ./txtkbd2kla altGr    ./ref/qwertyMain31.txt  $1Anglez-altGr.txt \
  | ./txtkbd2kla shift    ./ref/qwertyMain31.txt  $1Anglez-shift.txt \
  | ./txtkbd2kla primary  ./ref/qwertyMain31.txt  $1Anglez-main.txt \
  | ./txtkbd2kla 'label:' "$1 anglez" > $1Anglez.json
