#!/bin/sh

cat ./ref/qwertyMatrix30+digits.json \
  | ./ref/txtkbd2kla altGr       ./ref/qwertyMain30.txt       mcb25v$1-altGr.txt \
  | ./ref/txtkbd2kla shift       ./ref/qwertyMain30.txt       mcb25v$1-shift.txt \
  | ./ref/txtkbd2kla primary     ./ref/qwertyMain30+digits.txt mcb25v$1-main.txt \
  | ./ref/txtkbd2kla 'author:' "phil quesnel" \
  | ./ref/txtkbd2kla 'label:' "mcb25v$1" > mcb25v$1.json
