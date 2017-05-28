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
 . "   ( x j    * `; )  "
 . "`" , w k {  }  y . b '  "
 . "      z        q  "

layer1 := ""
 . "   u l m      f o p   "
 . " r i n t v  g s e h a "
 . "      d       c       "
 

layer2sh := ""
 . "   ( X J    * `; )  "
 . "`" , W K {  }  Y . B '  "
 . "      Z        Q  "

layer1sh := ""
 . "   U L M      F O P   "
 . " R I N T V  G S E H A "
 . "      D       C       "

; main layer
CreateLayer(1)

; 2nd layer, accessed w. Space, 
CreateLayer(2, 'Space', 0)

AddMappings(1, 1, fromQwerty, layer1sh)
AddMappings(2, 1, fromQwerty, layer2sh)
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

