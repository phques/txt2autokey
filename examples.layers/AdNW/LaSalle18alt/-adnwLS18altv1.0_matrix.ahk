/*

2018-04-10

chars left to place
=:_/*

$>{}[]\+|&<%@#^`~


*/

; code only includes

; Global variables for pkl_guiLayers.ahk / layout image
; MUST be declared *before* scripts that use them
global ImgsDir := A_ScriptDir . "\imgs\v1"
global ImgWidth := 170
global ImgHeight := 98
global CenterOnCurrWndMonitor := 1

#include ../../common/layers.ahk
#include ../../common/groups.ahk
#include ../../common/clipboardToBash.ahk
#include ../../common/fromPkl/pkl_guiLayers.ahk

qwertyMask18 := "
(Join`r`n
   w e r   u i o 
 a s d f   j k l ;
 z     v   m     /
)"


; ----

;SetNoKeyChar('~')

layer1 := "
(Join`r`n
    n r d   i e h  
  m l s t   a o y g
  f     c   u     p
)"

layer1sh := "
(Join`r`n
    N R D   I E H  
  M L S T   A O Y G
  F     C   U     P
)"

layer2 := "
(Join`r`n
    v . j   " b w  
  ! x - ,   k ' z ;
  (     ?   q     )
)"

layer2sh := "
(Join`r`n
    V = J   : B W  
  { X / *   K + Z }
  [     ?   Q     ]
)"

 

; main layer
CreateLayer(1)

; 2nd layer, 
; since SmartYao LY092-SN doesnt output RAlt,
; we use num5 as AltGr key (physically placed under thumb)
CreateLayer(2, "Numpad5", 1)

AddMappings(1, 1, qwertyMask18, layer1sh)
AddMappings(2, 1, qwertyMask18, layer2sh)
AddMappings(1, 0, qwertyMask18, layer1)
AddMappings(2, 0, qwertyMask18, layer2)
SetNoKeyChar('')
AddMappings(2, 0, '2 3', '~ $')
AddMappings(1, 0, '1 2 3 4 5  6 7 8 9 0', '4 0 1 2 3   7 6 5 9 8')
    
; ---------------

#include ../../common/extend/extendSpace2.ahk


DisplayHelpImage()
return

;------

; other hotkey defs

; #include ../../common/capsLock.ahk
; #include ../../common/extend/extendLAlt.ahk
#include ../../common/commonHotkeys.ahk

;#include extraKeyDefs.ahk

