; extend layer, layer key = Space

#include ../../layerKeyMappings.ahk

from := ""
 . " q w e r t  y u i o  p [ "
 . " a s d f g  h j k l `; ' "
 . " z x c v b  n m , .  / "

to := ""
 . ' [ : { ! &  `% + } * ] ~ '
 . ' - ( " . <  > , = ) `; `` '
 . ' 8 4 0 2 6  9 3 1 5 7 '

InitLayerMappings("Space")


MapLayerHotkeys(from, to)

; add a Space key so we can hold to repeat and/or 
; insert space inbetween layer chars
MapLayerHotkeys("LShift", "Space")

; and Enter too
MapLayerHotkeys("RShift", "Enter")
MapLayerHotkeys("Enter", "Enter")

