#!/bin/sh

#  mcb20v1.4
cat qwertyMatrix3x4x2+digits.json \
  | ./txtkbd2kla shiftAltGr  qwertyMatrix3x4x2.txt       $1-shiftAltGr.txt  \
  | ./txtkbd2kla altGr       qwertyMatrix20.txt       $1-altGr.txt \
  | ./txtkbd2kla shift       qwertyMatrix3x4x2.txt       $1-shift.txt \
  | ./txtkbd2kla primary     qwertyMatrix3x4x2+digits.txt $1-main.txt \
  | ./txtkbd2kla 'author:' "phil quesnel" \
  | ./txtkbd2kla 'label:' "$1" 
