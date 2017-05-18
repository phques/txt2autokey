; shifted layer, layer key = Space

#include ../common/layerKeyMappings.ahk

from := ""
 . " q w e r t  y u i o  p [ "
 . " a s d f g  h j k l `; ' "
 . " z x c v b  n m , .  / "


to := ""
 . " K W O B L  H P R F G ~ "
 . " x y u c j  k h r w b & "
 . " [ { ( < +  _ > ) } ]  "

; (scan code sc039)
InitLayerMappings(1, "Space")

MapLayerHotkeys(1, from, to)


