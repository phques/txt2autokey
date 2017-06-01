/*
found on http://shenafu.com/code/keyboard/Keyboard%20Layout%20Analyzer%202.html#/config
Submitted By: Sasha Viminitz
actually it seems to come from here:
June 29, 2014 at 10:40 pm
https://mathematicalmulticore.wordpress.com/the-keyboard-layout-project/
small adjust PQ, angleZ fingering and curl left hand
*/

; -- layers --

#include ../common/layers.ahk
#include ../common/qwertyMasks.ahk
#include ../mtgap-curl33Layers/mtgap-curl33symLayerv1.0.ahk
 
layer1Sh := ""
 . ' ~ \ / # $ `% ^ & * < > _ + '
 . '   B Y O U @ V C D L P Q { } '
 . '   H I E A : F S T R N K '
 . '   X [ `; ] ! W G M J Z '
 
layer1 := ""
 . '`` 1 2 3 4 5 6 7 8 9 0 - = '
 . '   b y o u `' v c d l p q " | '
 . '   h i e a . f s t r n k '
 . '   x ( , ) ? w g m j z '
;. '   x ( ) . ? w g m j z '

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
global ImgsDir := "%A_ScriptDir%\imgs"
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

