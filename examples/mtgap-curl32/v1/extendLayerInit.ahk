; extend layer, layer key = Space

#include ../../../layerKeyMappings.ahk


; original 'BEAKL 4 Mod Ian AltGr 3' alt layer

from := ""
 . " q w e r t  y u i o  p [ "
 . " a s d f g  h j k l `; ' "
 . " z x c v    n m , .  / "

to := ""
 . " [ $ = < _  & `" `; + ] \ "
 . " 4 2 , 0 {  }  1  . 3 5 ^ "
 . " 6 8 - '    :  *  > 9 7 "

; InitLayerMappings(1, "Space")
InitLayerMappings(1, "sc039")


MapLayerHotkeys(1, from, to)

; add a Space key so we can hold to repeat and/or 
; insert space inbetween layer chars
MapLayerHotkeys(1, "LShift", "Space")

; and Enter too
MapLayerHotkeys(1, "RShift", "Enter")
MapLayerHotkeys(1, "Enter", "Enter")


