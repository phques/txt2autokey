

#include ../layerKeyMappings.ahk

; manually, old way
if(0){
	layerKeys["w"] := "Right"
	layerKeys["q"] := "^v"
	layerKeys["e"] := "@"

	; does not work witg pre="Alt" ? 
	createLayerHotKey("Space", "w")
	createLayerHotKey("Space", "q")
	createLayerHotKey("Space", "e")
}


; could use something like this also
from := ""
. " a  b c d" 
. " e  f"

to := ""
. " {  } ! @"
. " ^v p"

; or just, directly
if(1) {

InitLayerMappings("Space")

MapLayerHotkeys( " a  b c d"
				," {  } ! @")
				
MapLayerHotkeys( " e  f"
				," ^v Right")

}

return


; re-enbale Space as a normal key too!
sc039::Space


; +^8 reload
+^sc009:: Reload

