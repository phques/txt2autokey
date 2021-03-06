/*

*/

; -- layers --

#include ../../common/layers.ahk

; Qwerty mask
fromQwerty := ""
 . "   w e r      u i o    "
 . " a s d f g  h j k l `; "
 . "      c       m        "

layer2 := ""
 . "    ' `;  j         z  x  q "
 . ' (  b  .  y  {   }  w  v  ,  ) '
 . '       "            k '

 
layer1 := ""
 . '    d  o  f         l  u  p '
 . ' a  h  e  s  g   m  t Space  n  i '
 . '       c            r ' 
 

; main layer
CreateLayer(1)

; 2nd layer, accessed w. Space, 
; we have Sp on the layers
CreateLayer(2, 'Space', 1)

AddMappings(1, 0, fromQwerty, layer1)
AddMappings(2, 0, fromQwerty, layer2)


;------

; code only includes

; Global variables for pkl_guiLayers.ahk / layout image
; MUST be declared *before* scripts that use them
global ImgsDir := A_ScriptDir . "\imgs\v1.5"
global ImgWidth := 248
global ImgHeight := 46
global CenterOnCurrWndMonitor := 1

#include ../../common/groups.ahk
#include ../../common/clipboardToBash.ahk
#include ../../common/fromPkl/pkl_guiLayers.ahk

;DisplayHelpImage()
return

;------

; other hotkey defs

#include ../../common/capsLock.ahk
#include ../../common/extend/extendLAlt.ahk
#include ../../common/commonHotkeys.ahk

;#include extraKeyDefs.ahk

