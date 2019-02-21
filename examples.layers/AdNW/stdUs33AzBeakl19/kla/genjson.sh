#!/bin/sh

cat ./ref/qwertyMain30.json \
  | ./txtkbd2kla shift    ./ref/qwertyMain30.txt  $1-shift.txt \
  | ./txtkbd2kla primary  ./ref/qwertyMain30.txt  $1-main.txt \
  | ./txtkbd2kla 'author:' "Philippe Quesnel" \
  | ./txtkbd2kla 'label:' "$1 US Kbd" > $1.json
