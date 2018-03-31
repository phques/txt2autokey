/*
version for use on SmartYao LY092-SN kbd w. 'essie qwerty base'
*/

; code only includes

; Global variables for pkl_guiLayers.ahk / layout image
; MUST be declared *before* scripts that use them
global ImgsDir := A_ScriptDir . "\imgs\v1.1"
global ImgWidth := 110
global ImgHeight := 110
global CenterOnCurrWndMonitor := 1

#include ../../common/layers.ahk
#include ../../common/groups.ahk
#include ../../common/clipboardToBash.ahk
#include ../../common/fromPkl/pkl_guiLayers.ahk

; Qwerty mask
fromQwerty := ""
 . "  w e r   u i o "
 . "  s d f   j k l "
 . "  x c v  m , . "

layer2 := ""
 . '  j  *  (   )  w  " '
 . "  k  .  ,   '  b  v "
 . '  {  } `;   x  q  z '

layer1 := ""
 . '   f  o  u   h  t  c '
 . '   s  e  a   n  d  l '
 . '   g  y  i   r  p  m '
 
 
layer2sh := ""
 . '  J  *  [   ]  W  " '
 . "  K  .  ,   '  B  V "
 . '  <  > `;   X  Q  Z '

layer1sh := ""
 . '   F  O  U   H  T  C '
 . '   S  E  A   N  D  L '
 . '   G  Y  I   R  P  M '
 

; main layer
CreateLayer(1)

; 2nd layer, 
; since SmartYao LY092-SN doesnt output RAlt,
; we use num5 as AltGr key (physically placed under thumb)
CreateLayer(2, "Numpad5", 1)

AddMappings(1, 1, fromQwerty, layer1sh)
AddMappings(2, 1, fromQwerty, layer2sh)
AddMappings(1, 0, fromQwerty, layer1)
AddMappings(2, 0, fromQwerty, layer2)

#include ../../common/extend/extendSpace2.ahk

DisplayHelpImage()
return

;------

; other hotkey defs

; #include ../../common/capsLock.ahk
; #include ../../common/extend/extendLAlt.ahk
#include ../../common/commonHotkeys.ahk

;#include extraKeyDefs.ahk

