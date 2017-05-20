; shifted layer, layer key = Space

#include ../../../common/layerKeyMappings.ahk

from := ""
 . "   w e      i o    "
 . " a s d f  j k l `; "
 . "     c    m        "


to := ""
 . "   q j      k z   "
 . " . v y ,  f w p g "
 . "     x    b       "

; (scan code sc039)
InitLayerMappings(1, "sc039")

MapLayerHotkeys(1, from, to)



