/* 2017-05-24
  ./opt -2 englisch.txt -t 4  -K kwez/stdUsBeakl34.cfg
  (before adjusted bottom left costs, for AZ)
*/

; -- layers --

#include ../../common/layers.ahk
#include ../../common/qwertyMasks.ahk
;#include mtgap-curl33symLayerv1.0.ahk
 
layer1Sh := ""
 . ' Q N L D G   ? O I U J Z'
 . ' P R T S W   / A E H K X'
 . ' B M F C V   ! _ \ Y `;  '

 
layer1 := ""
 . ' q n l d g   - o i u j z'
 . ' p r t s w   , a e h k x'
 . ' b m f c v  `' . " y :  '
 

; main layer
CreateLayer(1)

; shifted chars 1st !
AddMappings(1, 1, qwertyMask32Sh, layer1Sh)
AddMappings(1, 0, qwertyMask32, layer1)

; symbols layer
;CreateSymbolsLayer(2, "Space", 0)

;------

; code only includes

; Global variables for pkl_guiLayers.ahk / layout image
; MUST be declared *before* scripts that use them
global ImgsDir := A_ScriptDir . "\imgs\v1.3"
global ImgWidth := 248
global ImgHeight := 46
global CenterOnCurrWndMonitor := 1

#include ../../common/groups.ahk
#include ../../common/clipboardToBash.ahk
#include ../../common/fromPkl/pkl_guiLayers.ahk

; DisplayHelpImage()
return

;------

; other hotkey defs

#include ../../common/capsLock.ahk
#include ../../common/extend/extendLAlt.ahk
#include ../../common/commonHotkeys.ahk

;#include extraKeyDefs.ahk

