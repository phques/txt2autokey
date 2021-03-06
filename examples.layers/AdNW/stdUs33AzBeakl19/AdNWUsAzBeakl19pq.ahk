/*

2019-02-23
AdNW ansi angleZ BEALK19 adjusted weights perso taste PQ

*/

; code only includes

; Global variables for pkl_guiLayers.ahk / layout image
; MUST be declared *before* scripts that use them
global ImgsDir := A_ScriptDir . "\imgs"
global ImgWidth := 176
global ImgHeight := 54
global CenterOnCurrWndMonitor := 1

#include ../../common/layers.ahk
#include ../../common/groups.ahk
#include ../../common/clipboardToBash.ahk
#include ../../common/fromPkl/pkl_guiLayers.ahk
#include ../../common/qwertyMasks.ahk

; ----

qwertyMask := "
(Join`r`n
        q w e r t   y u i o p 
         a s d f g   h j k l ; '
  @LShift z x c v     n m , . /
)"

layer1 := "
(Join`r`n
  k u i . /   q c r l b 
  g h e a ,   p t s n f ``
  j y ' o z   v d w m x 
)"

layer1sh := "
(Join`r`n
  K U I @ ?   Q C R L B 
  G H E A !   P T S N F ^
  J Y _ O Z ` V D W M X 
)"

 
; main layer
CreateLayer(1)

AddMappings(1, 1, qwertyMask, layer1sh)
AddMappings(1, 0, qwertyMask, layer1)

AddMappings(1, 0, 'Capslock', ';')

; -- punctuation layer (RAlt) --

#include ../../common/puncLayer.ahk

layerAccessKey := "RAlt"
blockAccessKey := 1
layerNo := 3
wideRightPunc := 0  ; when true, punc layer right hand is shifted to the right for easier access to alt key
CreatePuncLayer(layerNo, layerAccessKey, blockAccessKey, wideRightPunc) 

;--------

#include ../../common/extend/extendSpace2.ahk

DisplayHelpImage()
return

;------

; other hotkey defs

#include ../../common/commonHotkeys.ahk


