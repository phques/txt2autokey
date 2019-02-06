/*

2018-04-29
v5

2019-02-05
adj for non-wide and no 2nd layer (move xjqz to normal layer)
left hand shifted let with k on Shift key 
use "wid mode" right hand for punc layer

*/

; code only includes

; Global variables for pkl_guiLayers.ahk / layout image
; MUST be declared *before* scripts that use them
global ImgsDir := A_ScriptDir . "\imgs\v5"
global ImgWidth := 150
global ImgHeight := 50
global CenterOnCurrWndMonitor := 1

#include ../../common/layers.ahk
#include ../../common/groups.ahk
#include ../../common/clipboardToBash.ahk
#include ../../common/fromPkl/pkl_guiLayers.ahk

qwertyMask := "
(Join`r`n
       q  w  e  r         u  i  o  p 
       a  s  d  f  g   h  j  k  l  ;  '
 @LShift  z  x  c  v   n  m  ,  .  / 
)"


; ----

layer1 := "
(Join`r`n
       q  p  o  u         n  d  f  v
       g  i  a  e  x   l  r  t  s  c "
       k  ,  .  y  z   j  h  w  m  b
)"

layer1sh := "
(Join`r`n
       Q  P  O  U         N  D  F  V
       G  I  A  E  X   L  R  T  S  C '
       K  /  ?  Y  Z   J  H  W  M  B
)"


; main layer
CreateLayer(1)
AddMappings(1, 1, qwertyMask, layer1sh)
AddMappings(1, 0, qwertyMask, layer1)
AddMappings(1, 0, 'Capslock', ';') 


; punc layer

#include puncLayer.ahk

layerAccessKey := "RAlt"
blockAccessKey := 1
wideRight := 1  ; when true, right hand is shifted to the right for easier access to alt key
layerNo := 3
CreatePuncLayer(layerNo, layerAccessKey, blockAccessKey, wideRight) 


; ---------------

#include ../../common/extend/extendSpace2.ahk

DisplayHelpImage()
return

;------

; other hotkey defs

#include ../../common/commonHotkeys.ahk

