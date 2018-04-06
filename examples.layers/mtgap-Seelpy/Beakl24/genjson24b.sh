#!/bin/sh

cat qwertyMatrix24+digits.json \
  | ./txtkbd2kla altGr       qwertyMatrix24.txt       $1-altGr.txt \
  | ./txtkbd2kla shift       qwertyMatrix24.txt       $1-shift.txt \
  | ./txtkbd2kla primary     qwertyMatrix24+digits.txt $1-main.txt \
  | ./txtkbd2kla 'author:' "phil quesnel" \
  | ./txtkbd2kla 'label:' "$1" 
