#!/bin/sh

# call the script: genjson24 mcb24v1.0 > mcb24v1.0.json
cat qwertyMain30.json \
  | ./txtkbd2kla shift       qwertyMain30.txt  $1-shift.txt \
  | ./txtkbd2kla primary     qwertyMain30.txt  $1-main.txt \
  | ./txtkbd2kla 'author:' "phil quesnel" \
  | ./txtkbd2kla 'label:' "$1" 
