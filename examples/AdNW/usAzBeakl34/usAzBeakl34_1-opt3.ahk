/* 2017-05-24
  ./opt -3 englisch.txt -t 4  -K kwez/stdUsBeakl34.cfg
  (adjusted bottom left costs, for AZ)
*/

; -- layers --

#include ../../common/layers.ahk
#include ../../common/qwertyMasks.ahk
;#include mtgap-curl33symLayerv1.0.ahk
 
layer1Sh := ""
 . ' B F R D V   ? O I U J Z'
 . ' W N S T G   / A E H K X'
 . ' P L C M Q   ! _ \ Y `;  '

 
layer1 := ""
 . ' b f r d v   - o i u j z'
 . ' w n s t g   , a e h k x'
 . ' p l c m q  `' . " y :  '
 

; main layer
CreateLayer(1)

; shifted chars 1st !
AddMappings(1, qwertyMask32Sh, layer1Sh)
AddMappings(1, qwertyMask32, layer1)

; symbols layer
;CreateSymbolsLayer(2, "Space", 0)

;------

; code only includes

; Global variables for pkl_guiLayers.ahk / layout image
; MUST be declared *before* scripts that use them
global ImgsDir := "%A_ScriptDir%\imgs\v1.3"
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

