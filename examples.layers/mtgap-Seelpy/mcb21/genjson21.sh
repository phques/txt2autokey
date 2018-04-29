#!/bin/sh

cat qwertyMatrix24+digits.json \
  | ./txtkbd2kla altGr       qwertyMatrix24.txt       mcb21v$1-altGr.txt \
  | ./txtkbd2kla shift       qwertyMatrix24.txt       mcb21v$1-shift.txt \
  | ./txtkbd2kla primary     qwertyMatrix24+digits.txt mcb21v$1-main.txt \
  | ./txtkbd2kla 'author:' "phil quesnel" \
  | ./txtkbd2kla 'label:' "mcb21v$1"  > mcb21v$1.json
