#!/bin/sh

cat ./ref/qwertyMain31.json \
  | ./ref/txtkbd2kla altGr       ./ref/qwertyMain31.txt       mcb25FlatIntl-altGr.txt \
  | ./ref/txtkbd2kla shift       ./ref/qwertyMain31.txt       mcb25FlatIntl-shift.txt \
  | ./ref/txtkbd2kla primary     ./ref/qwertyMain31.txt mcb25FlatIntl-main.txt \
  | ./ref/txtkbd2kla 'author:' "Philippe Quesnel" \
  | ./ref/txtkbd2kla 'label:' "mcb25FlatIntl US Kbd" > mcb25FlatIntlUsKbd.json
