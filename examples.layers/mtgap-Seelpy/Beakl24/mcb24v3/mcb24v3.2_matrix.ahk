/*
version for use on SmartYao LY092-SN kbd w. 'qwerty ref base'

2018-04-06
24v3.2 (3.1 reversed !)


*/

; code only includes

; Global variables for pkl_guiLayers.ahk / layout image
; MUST be declared *before* scripts that use them
global ImgsDir := A_ScriptDir . "\imgs\v3.1"
global ImgWidth := 110
global ImgHeight := 110
global CenterOnCurrWndMonitor := 1

#include ../../../common/layers.ahk
#include ../../../common/groups.ahk
#include ../../../common/clipboardToBash.ahk
#include ../../../common/fromPkl/pkl_guiLayers.ahk

; Qwerty mask
fromQwerty := "
(Join`r`n
  q w e r     u i o p
  a s d f g h j k l ; 
  z x c v     m , . /   
)"

; note, for matrix, use home block for top row on the right
fromQwertyAltGr := "
(Join`r`n
   2 3        
 q w e r     u i o
 a s d f g   j k l ;
 z x c v b   m , . /
)"

; ----

layer1 := "
(Join`r`n
 ^  c  n  d         u  o  p  \
 f  r  s  t  m   y  a  e  h  g
 v  w  b  l         i  j  k  x
)"

layer1sh := "
(Join`r`n
 $  C  N  D         U  O  P  ~
 F  R  S  T  M   Y  A  E  H  G
 V  W  B  L         I  J  K  X
)"

layerAltGr := "
(Join`r`n
   _ ``        
 z q { }     < > -
 = ( . " /   : ; ) *
 [ ] + & |   , ! ' ?
)"


 

; main layer
CreateLayer(1)

; 2nd layer, 
; since SmartYao LY092-SN doesnt output RAlt,
; we use num5 as AltGr key (physically placed under thumb)
CreateLayer(2, "Numpad5", 1)

AddMappings(1, 1, fromQwerty, layer1sh)
AddMappings(1, 0, fromQwerty, layer1)
AddMappings(2, 0, fromQwertyAltGr, layerAltGr)

AddMappings(1, 0, '1 2 3 4 5  6 7 8 9 0', '4 0 1 2 3   7 6 5 9 8')

AddMappings(1, 1, 'CapsLock', '%') 
AddMappings(1, 0, 'CapsLock', '#') 
AddMappings(2, 0, 'CapsLock', '@') 


#include ../../../common/extend/extendSpace2.ahk

DisplayHelpImage()
return

;------

; other hotkey defs

#include ../../../common/commonHotkeys.ahk


