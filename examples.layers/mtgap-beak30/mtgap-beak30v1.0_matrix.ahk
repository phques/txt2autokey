/*
version for use on SmartYao LY092-SN kbd w. 'qwerty ref base'

2018-04-08
30v1.0

*/

; code only includes

; Global variables for pkl_guiLayers.ahk / layout image
; MUST be declared *before* scripts that use them
global ImgsDir := A_ScriptDir . "\imgs\v1.0"
global ImgWidth := 170
global ImgHeight := 50
global CenterOnCurrWndMonitor := 1

#include ../common/layers.ahk
#include ../common/groups.ahk
#include ../common/clipboardToBash.ahk
#include ../common/fromPkl/pkl_guiLayers.ahk
#include ../common/qwertyMasks.ahk

; ----

layer1 := "
(Join`r`n
 q  f  d  m  w   :  ,  i  y  z
 p  s  t  r  l   .  a  e  h  k
 b  c  g  n  v   x  o  ;  u  j
)"

layer1sh := "
(Join`r`n
 Q  F  D  M  W   <  >  I  Y  Z
 P  S  T  R  L   ?  A  E  H  K
 B  C  G  N  V   X  O  /  U  J
)"

layerAltGr := "
(Join`r`n
 #  !  (  {  [   ]  }  )  *  ^
 ?  -  .  ,  /   $  "  _  '  +
 \  ;  |  =  @   &  :  <  >  %
)"

 

; main layer
CreateLayer(1)

; 2nd layer, 
; since SmartYao LY092-SN doesnt output RAlt,
; we use num5 as AltGr key (physically placed under thumb)
CreateLayer(2, "Numpad5", 1)

AddMappings(1, 1, qwertyMask30, layer1sh)
AddMappings(1, 0, qwertyMask30, layer1)
AddMappings(2, 0, qwertyMask30, layerAltGr)

AddMappings(1, 0, '1 2 3 4 5  6 7 8 9 0', '4 0 1 2 3   7 6 5 9 8')


#include ../common/extend/extendSpace2.ahk

DisplayHelpImage()
return

;------

; other hotkey defs

#include ../common/commonHotkeys.ahk


