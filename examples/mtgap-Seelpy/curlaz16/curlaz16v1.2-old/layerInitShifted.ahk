; shifted layer, layer key = Space

#include ../../../common/layerKeyMappings.ahk

from := ""
 . "   w e r  u i o    "
 . " a s d f  j k l `; "
 . "     c    m        "


to := ""
 . "  `" v j   z q '    "
 . " b f w y   Space , g . "
 . "      k    x        " 

; (scan code sc039)
InitLayerMappings(1, "sc039")

MapLayerHotkeys(1, from, to)

