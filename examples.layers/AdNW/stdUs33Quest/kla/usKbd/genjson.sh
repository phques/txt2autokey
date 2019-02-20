#!/bin/sh

cat ./ref/qwertyMain30.json \
  | ./txtkbd2kla shift    ./ref/qwertyMain30.txt  AdNWansiQuest$1-shift.txt \
  | ./txtkbd2kla primary  ./ref/qwertyMain30.txt  AdNWansiQuest$1-main.txt \
  | ./txtkbd2kla 'author:' "Den" \
  | ./txtkbd2kla 'label:' "AdNWansiQuest$1 Ansi Kbd" > AdNWansiQuest$1ansi.json
