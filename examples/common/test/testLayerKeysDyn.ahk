

#include ../layerKeyMappings.ahk

; manually, old way
if(0){
	InitLayerMappings("Space")

	layerMappings["w"] := "Right"
	layerMappings["q"] := "^v"
	layerMappings["e"] := "0"

	; does not work witg pre="Alt" ? 
	; createLayerHotKey("Space", "w")
	; createLayerHotKey("Space", "q")
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
				," {  } ! 0")
				
MapLayerHotkeys( " e  f"
				," ^v Right")

}

return


; re-enbale Space as a normal key too!
sc039::Space


; +^8 reload
+^sc009:: Reload

