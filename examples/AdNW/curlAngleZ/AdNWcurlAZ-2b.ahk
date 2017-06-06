/*
AdNW optimizer
./opt -2 englisch.txt -t 4  -K kwez/usCurlAngleZ.cfg 
v2b, revised symbols

*/

; -- layers --

#include ../../common/layers.ahk
#include ../../common/qwertyMasks.ahk
#include ../../mtgap-curl33Layers/mtgap-curl33symLayerv1.0.ahk


 ; angez + curl (swap m - g, swap , .)
layer1curlAZSh := ""
 . ' X Y U `; Q  Z M L D P J '
 . ' S I E A /  F N R T C G '
 . ' < ( O > )  K H W B V   '
 
layer1curlAZ := ""
 . ' x y u . q  z m l d p j '
 . ' s i e a ,  f n r t c g '
 . ' " { o `' }  k h w b v  '

; main layer
CreateLayer(1)

; shifted chars 1st !
AddMappings(1, 1, qwertyMask32, layer1curlAZSh)
AddMappings(1, 0, qwertyMask32, layer1curlAZ)

; symbols layer
CreateSymbolsLayer(2, "RAlt", 0)

;------

; code only includes

; Global variables for pkl_guiLayers.ahk / layout image
; MUST be declared *before* scripts that use them
global ImgsDir := "%A_ScriptDir%\imgs-curlaz-2b"
global ImgWidth := 200
global ImgHeight := 46
global CenterOnCurrWndMonitor := 1

#include ../../common/groups.ahk
#include ../../common/clipboardToBash.ahk
#include ../../common/fromPkl/pkl_guiLayers.ahk

DisplayHelpImage()
return

;------

; other hotkey defs

#include ../../common/capsLock.ahk
#include ../../common/extend/extendSpace.ahk
#include ../../common/commonHotkeys.ahk

