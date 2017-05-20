; shifted layer, layer key = Space

#include ../../../common/layerKeyMappings.ahk

from := ""
 . "   w e r  u i o    "
 . " a s d f  j k l `; "
 . "     c    m        "


to := ""
 . '   q x z   j - "   '
 . " v , g w   p . b y "
 . "      k    '       " 

; (scan code sc039)
InitLayerMappings(1, "sc039")

MapLayerHotkeys(1, from, to)
