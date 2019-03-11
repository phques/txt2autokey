/*

2019-03-10
AdNW ansi angleZ BEALK19 adjusted weights perso taste PQ

*/

; code only includes

; Global variables for pkl_guiLayers.ahk / layout image
; MUST be declared *before* scripts that use them
global ImgsDir := A_ScriptDir . "\imgs\pq2"
global ImgWidth := 176
global ImgHeight := 54
global CenterOnCurrWndMonitor := 1

#include ../../common/layers.ahk
#include ../../common/groups.ahk
#include ../../common/clipboardToBash.ahk
#include ../../common/fromPkl/pkl_guiLayers.ahk

; ----

qwertyMask := "
(Join`r`n
        q w e r t   y u i o p 
         a s d f g   h j k l ; '
  @LShift z x c v     n m , . /
)"

layer1 := "
(Join`r`n
  x u i . q   k f r l z 
  g h e a ,   p t s n c ``
  j y ' o /   v d w m b 
)"

layer1sh := "
(Join`r`n
  X U I @ Q   K F R L Z 
  G H E A !   P T S N C ^
  J Y _ O ?   V D W M B 
)"

 
; main layer
CreateLayer(1)

AddMappings(1, 1, qwertyMask, layer1sh)
AddMappings(1, 0, qwertyMask, layer1)

AddMappings(1, 0, 'Capslock', ';')

; -- punctuation layer --

#include ../../common/puncLayer.ahk

layerAccessKey := "space"
blockAccessKey := 0
layerNo := 3
wideRightPunc := 0  ; when true, punc layer right hand is shifted to the right for easier access to alt key
CreatePuncLayer(layerNo, layerAccessKey, blockAccessKey, wideRightPunc) 

;--------

#include ../../common/extend/extend2Base.ahk
SetupExtend2("LAlt")

DisplayHelpImage()
return

;------

; other hotkey defs

#include ../../common/commonHotkeys.ahk


