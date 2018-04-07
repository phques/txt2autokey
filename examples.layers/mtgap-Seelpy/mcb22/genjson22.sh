#!/bin/sh

cat qwertyMatrix24+digits.json \
  | ./txtkbd2kla shiftAltGr  qwertyMatrix24.txt       mcb22v$1-shiftAltGr.txt  \
  | ./txtkbd2kla altGr       qwertyMatrix24.txt       mcb22v$1-altGr.txt \
  | ./txtkbd2kla shift       qwertyMatrix24.txt       mcb22v$1-shift.txt \
  | ./txtkbd2kla primary     qwertyMatrix24+digits.txt mcb22v$1-main.txt \
  | ./txtkbd2kla 'author:' "phil quesnel" \
  | ./txtkbd2kla 'label:' "mcb22v$1" 
