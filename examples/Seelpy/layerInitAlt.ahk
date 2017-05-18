; Alt layer, layer key = Alt

#include ../common/layerKeyMappings.ahk

from := ""
 . " q w e r t  y u i o  p [ "
 . " a s d f g  h j k l `;  "
 . " z x c v b  n m , .  / "


to := ""
 . ' X Y U : J  ! " = Q Z ^ '
 . " v p g l -  ' d f , q  "
 . " \ $ ? `; @  `% * / # | "

InitLayerMappings(2, "Alt")

MapLayerHotkeys(2, from, to)

