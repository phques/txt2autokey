#!/bin/sh

cat qwertyMatrixLasalle18+digits.json \
  | ./txtkbd2kla shiftAltGr  qwertyMatrixLasalle18.txt       LS18v$1-shiftAltGr.txt  \
  | ./txtkbd2kla altGr       qwertyMatrixLasalle18.txt       LS18v$1-altGr.txt \
  | ./txtkbd2kla shift       qwertyMatrixLasalle18.txt       LS18v$1-shift.txt \
  | ./txtkbd2kla primary     qwertyMatrixLasalle18+digits.txt LS18v$1-main.txt \
  | ./txtkbd2kla 'author:' "phil quesnel" \
  | ./txtkbd2kla 'label:' "LS18v$1"  > LS18v$1.json