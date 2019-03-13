/*
2019-03-11

colemak mod-dh

*/


; code only includes

; Global variables for pkl_guiLayers.ahk / layout image
; MUST be declared *before* scripts that use them

global ImgsDir := A_ScriptDir . "\imgs"

global ImgWidth := 176
global ImgHeight := 54
global CenterOnCurrWndMonitor := 1

#include ../common/layers.ahk
#include ../common/groups.ahk
#include ../common/clipboardToBash.ahk
#include ../common/fromPkl/pkl_guiLayers.ahk

qwertyMask := "
(Join`r`n
        q w e r t   y u i o p 
        a s d f g   h j k l ; 
  @LShift z x c v   n m , . /
)"

; ----

layer1 := "
(Join`r`n
  q w f p b   j l u y ;
  a r s t g   k n e i o
  z x c d v   m h , . /
)"

layer1sh := "
(Join`r`n
  Q W F P B   J L U Y :
  A R S T G   K N E I O
  Z X C D V   M H < > ?
)"


; main layer
CreateLayer(1)
AddMappings(1, 1, qwertyMask, layer1sh)
AddMappings(1, 0, qwertyMask, layer1)
AddMappings(1, 0, 'Capslock', 'backspace')


; -- punctuation layer --

#include ../common/puncLayer.ahk

layerAccessKey := "space"
blockAccessKey := 0
layerNo := 3
wideRightPunc := 0  ; when true, punc layer right hand is shifted to the right for easier access to alt key
CreatePuncLayer(layerNo, layerAccessKey, blockAccessKey, wideRightPunc) 

;--------

#include ../common/extend/extend2Base.ahk
SetupExtend2("LAlt")

DisplayHelpImage()
return

;------

; other hotkey defs

#include ../common/commonHotkeys.ahk


