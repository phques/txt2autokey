/*
2019-02-23
AdNW BEALK19 (original is ansi angleZ)
on SmartYao LY092-SN w. qwertyRef

swap vx qz ,.
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

qwertyMask := "
(Join`r`n
 q  w  e  r  t   y  u  i  o  p
 a  s  d  f  g   h  j  k  l  ; '
 z  x  c  v  b   n  m  ,  .  /
)"

; ----

layer1 := "
(Join`r`n
  j u i o z  x d r l b 
  g h e a .  p t s n c ``
  q y ' , /  k f w m v
)"

layer1sh := "
(Join`r`n
  J U I O Z  X D R L B 
  G H E A @  P T S N C ^
  Q Y _ ! ?  K F W M V
)"


; main layer
CreateLayer(1)
AddMappings(1, 1, qwertyMask, layer1sh)
AddMappings(1, 0, qwertyMask, layer1)
AddMappings(1, 0, 'Capslock', ';')


; punc layer

#include ../../common/puncLayer.ahk

layerAccessKey := "Numpad5"
blockAccessKey := 1
layerNo := 3
wideRightPunc := 0  ; when true, punc layer right hand is shifted to the right for easier access to alt key

CreatePuncLayer(layerNo, layerAccessKey, blockAccessKey, wideRightPunc)


; ---------------

#include ../../common/extend/extendSpace2.ahk

DisplayHelpImage()
return

;------

; other hotkey defs

#include ../../common/commonHotkeys.ahk
