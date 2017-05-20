; shifted layer, layer key = Space

#include ../../common/layerKeyMappings.ahk

from := ""
 . "   w e      i o    "
 . " a s d f  j k l `; "
 . "     c    m        "


to := ""
 . "   z k      j q "
 . " g p w f  , y v . "
 . "     b    x "

; (scan code sc039)
InitLayerMappings(1, "sc039")

MapLayerHotkeys(1, from, to)

