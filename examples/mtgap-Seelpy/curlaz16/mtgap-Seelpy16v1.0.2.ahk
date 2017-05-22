/*

*/

; -- layers --

#include ../../common/layers.ahk

; Qwerty mask
fromQwerty := ""
 . "   w e r  u i o    "
 . " a s d f  j k l `; "
 . "     c    m        "

layer2 := ""
 . "    _  '  z      q  x  - "
 . " .  v  ,  y      g  w  b  k "
 . '         "       j ' 

layer1 := ""
 . "    u  o  f      m  l  p " 
 . " a  h  e  s      t  n  i  r "
 . "       c         d "


; main layer
CreateLayer(1)

; 2nd layer, accessed w. Space, 
CreateLayer(2, 'Space')

AddMappings(1, fromQwerty, layer1)
AddMappings(2, fromQwerty, layer2)


;------

; code only includes

; Global variables for pkl_guiLayers.ahk / layout image
; MUST be declared *before* scripts that use them
global ImgsDir := "%A_ScriptDir%\imgs\v1.2"
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

