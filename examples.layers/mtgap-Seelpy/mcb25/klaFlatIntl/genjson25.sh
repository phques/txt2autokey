#!/bin/sh

cat ./ref/qwertyMatrix31.json \
  | ./ref/txtkbd2kla altGr       ./ref/qwertyMain30.txt       mcb25FlatIntl-altGr.txt \
  | ./ref/txtkbd2kla shift       ./ref/qwertyMain31.txt       mcb25FlatIntl-shift.txt \
  | ./ref/txtkbd2kla primary     ./ref/qwertyMain31.txt mcb25FlatIntl-main.txt \
  | ./ref/txtkbd2kla 'author:' "phil quesnel" \
  | ./ref/txtkbd2kla 'label:' "mcb25FlatIntl" > mcb25FlatIntl.json
