#!/bin/sh

cat ./ref/qwertyMain30.json \
  | ./txtkbd2kla shift    ./ref/qwertyMain30.txt  mtgapBeakl30v2.$1-shift.txt \
  | ./txtkbd2kla primary  ./ref/qwertyMain30.txt  mtgapBeakl30v2.$1-main.txt \
  | ./txtkbd2kla 'author:' "Philippe Quesnel" \
  | ./txtkbd2kla 'label:' "mtgapBeakl30v2.$1 US Kbd" > mtgapBeakl30v2.$1UsKbd.json
