/*

*/

; -- layers --

#include ../../common/layers.ahk

; Qwerty mask
fromQwerty := ""
 . "  w e r   u i o "
 . "  s d f   j k l "
 . "  z x c   m , . "

layer2 := ""
 . '   {  x  j   *  q  } '
 . "   '  b  w   y  ,  k "
 . ' z `;  v      "  (  ) '

layer1 := ""
 . '   c  n  g   u  o  p '
 . '   r  s  t   a  e  h '
 . ' m  f  l      i  .  d '
 

; main layer
CreateLayer(1)

; 2nd layer, accessed w. Space, 
CreateLayer(2, 'Space', 0)

AddMappings(1, 0, fromQwerty, layer1)
AddMappings(2, 0, fromQwerty, layer2)


;------

; code only includes

; Global variables for pkl_guiLayers.ahk / layout image
; MUST be declared *before* scripts that use them
global ImgsDir := "%A_ScriptDir%\imgs\v1.2.3"
global ImgWidth := 248
global ImgHeight := 46
global CenterOnCurrWndMonitor := 1

#include ../../common/groups.ahk
#include ../../common/clipboardToBash.ahk
#include ../../common/fromPkl/pkl_guiLayers.ahk

DisplayHelpImage()
return

;------

; other hotkey defs

#include ../../common/capsLock.ahk
#include ../../common/extend/extendLAlt.ahk
#include ../../common/commonHotkeys.ahk

;#include extraKeyDefs.ahk

