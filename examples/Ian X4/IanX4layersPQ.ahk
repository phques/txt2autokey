/*
http://kla.keyboard-design.com/#/config
Ian X4 (evolution of alt layers from BEAKL4 Mod Ian AltGr3 ?)

*/

; -- layers --

#include ../common/layers.ahk
#include ../common/qwertyMasks.ahk
; #include ../mtgap-curl33Layers/mtgap-curl33symLayerv1.0.ahk
 
layer1Sh := ""
 . ' J Y U ¬ @  M D C P Q Z '
 . ' I H A E \  G T S N R V '
 . ' | K O ^ ©  W L F B X '
 
layer1 := ""
 . " j y u ' !  m d c p q z "
 . ' i h a e 0  g t s n r v '
 . ' $ k o 2 #  w l f b x '

; main layer
CreateLayer(1)

; shifted chars 1st !
AddMappings(1, 1, qwertyMask32, layer1Sh)
AddMappings(1, 0, qwertyMask32, layer1)

; symbols layer
layerSym := ""
 . ' [ _ : ? &  + / `% * ] ~ '
 . ' - ( " . <  > , = ) `; `` '
 . ' 8 4 { } 6  9 3 1 5 7 '

CreateLayer(2, "RAlt", 1)
AddMappings(2, 0, qwertyMask32, layerSym)

;------

; code only includes

; Global variables for pkl_guiLayers.ahk / layout image
; MUST be declared *before* scripts that use them
global ImgsDir := A_ScriptDir
global ImgWidth := 200
global ImgHeight := 46
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

