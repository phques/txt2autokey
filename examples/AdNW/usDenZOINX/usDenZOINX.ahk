/*
*/

; -- layers --

#include ../../common/layers.ahk
#include ../../common/qwertyMasks.ahk
;#include mtgap-curl33symLayerv1.0.ahk
 
layer1Sh := ""
 . '  Z O I N X  K D C F V '
 . ' `; A E R :  L H T S B '
 . ' Q ? U ! J  Y M P G W '

 
layer1 := ""
 . ' z o i n x  k d c f v '
 . ' " a e r ,  l h t s b '
 . " q ' u . j  y m p g w "
 

; main layer
CreateLayer(1)

; shifted chars 1st !
AddMappings(1, qwertyMask30Sh, layer1Sh)
AddMappings(1, qwertyMask30, layer1)

; symbols layer
;CreateSymbolsLayer(2, "Space", 0)

;------

; code only includes

; Global variables for pkl_guiLayers.ahk / layout image
; MUST be declared *before* scripts that use them
global ImgsDir := "%A_ScriptDir%\imgs\v1.3"
global ImgWidth := 248
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
#include ../../common/extend/extendLAlt.ahk
#include ../../common/commonHotkeys.ahk

;#include extraKeyDefs.ahk

