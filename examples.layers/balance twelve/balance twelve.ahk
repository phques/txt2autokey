/*
found on http://shenafu.com/code/keyboard/Keyboard%20Layout%20Analyzer%202.html#/config
Submitted By: Sasha Viminitz
*/

; -- layers --

#include ../common/layers.ahk
#include ../common/qwertyMasks.ahk
#include ../mtgap-curl33Layers/mtgap-curl33symLayerv1.0.ahk
 
layer1Sh := ""
 . ' ~ [ ] # $ `% ^ & * ^ { } + '
 . '   P L C D W @ U O Y K Q = | '
 . '   N R S T M `; A E I H V '
 . '   Z J F G B ! : < > X '
 
layer1 := ""
 . '`` ( ) 0 1 2 3 4 5 6 7 8 9  '
 . "   p l c d w ' u o y k q _ / "
 . '   n r s t m , a e i h v '
 . '   z j f g b ? . " - x '

; main layer
CreateLayer(1)

; shifted chars 1st !
AddMappings(1, 1, qwertyMask, layer1Sh)
AddMappings(1, 0, qwertyMask, layer1)

; symbols layer
; both LAlt and RAlt are access keys of layer2
CreateSymbolsLayer(2, "LAlt", 0)
CreateLayerAccessHotkey(2, "RAlt")

;------

; code only includes

; Global variables for pkl_guiLayers.ahk / layout image
; MUST be declared *before* scripts that use them
global ImgsDir := A_ScriptDir . "\imgs\orig"
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

