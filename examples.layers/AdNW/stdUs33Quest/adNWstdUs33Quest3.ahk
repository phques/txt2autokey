/*

2019-02-19

having fun with adNW,
std US / ANSI kbd with fixed QUEST keys :-)
 Q
  UE  ST

*/

; code only includes

; Global variables for pkl_guiLayers.ahk / layout image
; MUST be declared *before* scripts that use them

wideRightPunc := 1  ; when true, punc layer right hand is shifted to the right for easier access to alt key
subdir := "\imgs"

global ImgsDir := A_ScriptDir . subdir

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
  q , h z j   v f d l k
  i a u e o   c s t n r ``
  x . y ' /   g b p m w
)"

layer1sh := "
(Join`r`n
  Q ! H Z J   V F D L K
  I A U E O   C S T N R ^
  X @ Y _ ?   G B P M W
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
CreatePuncLayer(layerNo, layerAccessKey, blockAccessKey, wideRightPunc)


; ---------------

#include ../../common/extend/extendSpace2.ahk

DisplayHelpImage()
return

;------

; other hotkey defs

#include ../../common/commonHotkeys.ahk
