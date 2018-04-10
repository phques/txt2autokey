#!/bin/sh

cat qwertyMatrixLasalle20+digits.json \
  | ./txtkbd2kla shiftAltGr  qwertyMatrixLasalle20.txt       LS20v$1-shiftAltGr.txt  \
  | ./txtkbd2kla altGr       qwertyMatrixLasalle20.txt       LS20v$1-altGr.txt \
  | ./txtkbd2kla shift       qwertyMatrixLasalle20.txt       LS20v$1-shift.txt \
  | ./txtkbd2kla primary     qwertyMatrixLasalle20+digits.txt LS20v$1-main.txt \
  | ./txtkbd2kla 'author:' "phil quesnel" \
  | ./txtkbd2kla 'label:' "LS20v$1"  > LS20v$1.json