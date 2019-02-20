#!/bin/sh

cat ./ref/qwertyMain30.json \
  | ./txtkbd2kla shift    ./ref/qwertyMain30.txt  beakl19-shift.txt \
  | ./txtkbd2kla primary  ./ref/qwertyMain30.txt  beakl19-main.txt \
  | ./txtkbd2kla 'author:' "Den" \
  | ./txtkbd2kla 'label:' "beakl19 Ansi Kbd" > beakl19ansi.json
