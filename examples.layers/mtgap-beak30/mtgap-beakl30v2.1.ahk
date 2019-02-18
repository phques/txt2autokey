/*

2019-02-17
mtgap-beakl30v2.1

*/

; code only includes

; Global variables for pkl_guiLayers.ahk / layout image
; MUST be declared *before* scripts that use them
global ImgsDir := A_ScriptDir . "\imgs\v2.1"
global ImgWidth := 170
global ImgHeight := 50
global CenterOnCurrWndMonitor := 1

#include ../common/layers.ahk
#include ../common/groups.ahk
#include ../common/clipboardToBash.ahk
#include ../common/fromPkl/pkl_guiLayers.ahk
#include ../common/qwertyMasks.ahk

; ----

qwertyMask := "
(Join`r`n
        q w e r t   y u i o p 
         a s d f g   h j k l ; '
  @LShift z x c v     n m , . /
)"

layer1 := "
(Join`r`n
  j  p  o  u  .   v  w  d  f  q
  k  h  e  a  y   l  n  t  s  g ``
  z  ,  '  i  /   x  r  m  c  b
)"

layer1sh := "
(Join`r`n
  J  P  O  U  @   V  W  D  F  Q
  K  H  E  A  Y   L  N  T  S  G ^
  Z  !  _  I  ?   X  R  M  C  B
)"

 
; main layer
CreateLayer(1)

AddMappings(1, 1, qwertyMask, layer1sh)
AddMappings(1, 0, qwertyMask, layer1)

AddMappings(1, 0, 'Capslock', ';')

; -- punctuation layer (RAlt) --

#include ../common/puncLayer.ahk

layerAccessKey := "RAlt"
blockAccessKey := 1
layerNo := 3
wideRightPunc := 0  ; when true, punc layer right hand is shifted to the right for easier access to alt key
CreatePuncLayer(layerNo, layerAccessKey, blockAccessKey, wideRightPunc) 

;--------

#include ../common/extend/extendSpace2.ahk

DisplayHelpImage()
return

;------

; other hotkey defs

#include ../common/commonHotkeys.ahk


