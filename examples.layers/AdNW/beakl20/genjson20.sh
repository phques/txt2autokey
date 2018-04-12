#!/bin/sh

cat qwertyMatrix20+digits.json \
  | ./txtkbd2kla shiftAltGr  qwertyMatrix20.txt        adnwBeakl20v$1-shiftAltGr.txt  \
  | ./txtkbd2kla altGr       qwertyMatrix20.txt        adnwBeakl20v$1-altGr.txt \
  | ./txtkbd2kla shift       qwertyMatrix20.txt        adnwBeakl20v$1-shift.txt \
  | ./txtkbd2kla primary     qwertyMatrix20+digits.txt adnwBeakl20v$1-main.txt \
  | ./txtkbd2kla 'author:' "phil quesnel" \
  | ./txtkbd2kla 'label:' "adnwBeakl20v$1" > adnwBeakl20v$1.json
