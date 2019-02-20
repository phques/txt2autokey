/*
2018-04-29
beakl19

*/

; code only includes

; Global variables for pkl_guiLayers.ahk / layout image
; MUST be declared *before* scripts that use them

global ImgsDir := A_ScriptDir . "\imgs"

global ImgWidth := 150
global ImgHeight := 50
global CenterOnCurrWndMonitor := 1

#include ../../common/layers.ahk
#include ../../common/groups.ahk
#include ../../common/clipboardToBash.ahk
#include ../../common/fromPkl/pkl_guiLayers.ahk

qwertyMask := "
(Join`r`n
       q  w  e  r  t   y  u  i  o  p
       a  s  d  f  g   h  j  k  l  ; '
 @LShift  z  x  c  v   n  m  ,  .  /
)"


; ----

layer1 := "
(Join`r`n
  q . o u j   w d n m ,
  h a e i k   g s r t p ``
  z ' / y x   b c l f v
)"

layer1sh := "
(Join`r`n
  Q @ O U J    W D N M !
  H A E I K    G S R T P  ^
  Z _ ? Y X    B C L F V
)"


; main layer
CreateLayer(1)
AddMappings(1, 1, qwertyMask, layer1sh)
AddMappings(1, 0, qwertyMask, layer1)
AddMappings(1, 0, 'Capslock', ';')


; punc layer

#include ../../common/puncLayer.ahk

layerAccessKey := "RAlt"
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
