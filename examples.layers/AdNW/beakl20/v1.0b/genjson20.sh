#!/bin/sh

cat qwertyMatrix30+digits.json \
  | ../txtkbd2kla shiftAltGr  qwertyMatrix20.txt        adnwBeakl20v1.0b-shiftAltGr.txt  \
  | ../txtkbd2kla altGr       qwertyMain30+digits.txt adnwBeakl20v1.0b-altGr.txt \
  | ../txtkbd2kla shift       qwertyMain30.txt        adnwBeakl20v1.0b-shift.txt \
  | ../txtkbd2kla primary     qwertyMain30+digits.txt adnwBeakl20v1.0b-main.txt \
  | ../txtkbd2kla 'author:' "phil quesnel" \
  | ../txtkbd2kla 'label:' "adnwBeakl20v1.0b" > adnwBeakl20v1.0b.json
