/*
*/

; -- layers --

#include ../common/layers.ahk
#include ../common/qwertyMasks.ahk
; #include ../mtgap-curl33Layers/mtgap-curl33symLayerv1.0.ahk

layer1Sh := ""
 . ' ^ 1 2 3 4 5 6 7 8 9 0 & ~  '
 . '   X C D V J _ \ U G ? { } | '
 . '   N S T R H P A E O I B   '
 . '   F W M L Z `; : Y K Q   '
 
layer1 := ""
 . '`` # = ( ) / * + - `% @ [ ] '
 . '   x c d v j " `' u g ! < > $'
 . '   n s t r h p a e o i b '
 . '   f w m l z , . y k q'

; main layer
CreateLayer(1)

; shifted chars 1st !
AddMappings(1, 1, qwertyMask, layer1Sh)
AddMappings(1, 0, qwertyMask, layer1)

; symbols layer
; main layer
CreateLayer(2, 'RAlt', 0)

; shifted chars 1st !
AddMappings(2, 0, 'w e r', '[ ] $')
AddMappings(2, 0, 'a s d f g', '{ } < > |')



;------

; code only includes

; Global variables for pkl_guiLayers.ahk / layout image
; MUST be declared *before* scripts that use them
global ImgsDir := "%A_ScriptDir%\imgs\curlAZ"
global ImgWidth := 250
global ImgHeight := 66
global CenterOnCurrWndMonitor := 1

#include ../common/groups.ahk
#include ../common/clipboardToBash.ahk
#include ../common/fromPkl/pkl_guiLayers.ahk

DisplayHelpImage()
return

;------

; other hotkey defs

#include ../common/capsLock.ahk
#include ../common/extend/extendSpace.ahk
#include ../common/commonHotkeys.ahk

