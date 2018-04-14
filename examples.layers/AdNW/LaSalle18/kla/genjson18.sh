#!/bin/sh

cat qwertyMatrixLasalle20+digits.json \
  | ./txtkbd2kla shiftAltGr  qwertyMatrix3x4x2.txt       adnwLS18v$1-shiftAltGr.txt  \
  | ./txtkbd2kla altGr       qwertyMatrix3x4x2.txt       adnwLS18v$1-altGr.txt \
  | ./txtkbd2kla shift       qwertyMatrix3x4x2.txt       adnwLS18v$1-shift.txt \
  | ./txtkbd2kla primary     qwertyMatrix3x4x2+digits.txt adnwLS18v$1-main.txt \
  | ./txtkbd2kla 'author:' "phil quesnel" \
  | ./txtkbd2kla 'label:' "adnwLS18v$1"  > adnwLS18v$1.json
