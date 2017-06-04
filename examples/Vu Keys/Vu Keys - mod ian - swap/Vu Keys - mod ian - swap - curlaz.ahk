/*
PQ, applied curl+anglez mods
*/

; -- layers --

#include ../../common/layers.ahk
#include ../../common/qwertyMasks.ahk
#include ../../mtgap-curl33Layers/mtgap-curl33symLayerv1.0.ahk


 ; angez + curl
layer1curlAZSh := ""
 . ' Q K U Y B  X C D M : '
 . ' A H E O <  W N T S R '
 . ' P > I J Z  F L G V ? '
 
layer1curlAZ := ""
 . ' q k u y b  x c d m `; '
 . ' a h e o ,  w n t s r '
 . ' p . i j z  f l g v / '

; main layer
CreateLayer(1)

; shifted chars 1st !
AddMappings(1, 1, qwertyMask30, layer1curlAZSh)
AddMappings(1, 0, qwertyMask30, layer1curlAZ)

; symbols layer
CreateSymbolsLayer(2, "RAlt", 0)

;------

; code only includes

; Global variables for pkl_guiLayers.ahk / layout image
; MUST be declared *before* scripts that use them
global ImgsDir := "%A_ScriptDir%\imgs\curlAZ"
global ImgWidth := 250
global ImgHeight := 66
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

