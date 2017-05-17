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

; InitLayerMappings(1, "Space")
InitLayerMappings(1, "sc039")


MapLayerHotkeys(1, from, to)

; add a Space key so we can hold to repeat and/or 
; insert space inbetween layer chars
MapLayerHotkeys(1, "LShift", "Space")

; and Enter too
MapLayerHotkeys(1, "RShift", "Enter")
MapLayerHotkeys(1, "Enter", "Enter")



