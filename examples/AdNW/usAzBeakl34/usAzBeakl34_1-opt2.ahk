/* 2017-05-24
  ./opt -2 englisch.txt -t 4  -K kwez/stdUsBeakl34.cfg
  (adjusted bottom left costs, for AZ)
*/

; -- layers --

#include ../../common/layers.ahk
#include ../../common/qwertyMasks.ahk
#include ../../mtgap-curl33Layers/mtgap-curl33symLayerv1.0.ahk
 
layer1Sh := ""
 . ' X N C D V   ? O I U J Z'
 . ' W R S T G   / A E H P K'
 . ' L F M B Q   ! _ \ Y `;  '

 
layer1 := ""
 . ' x n c d v   - o i u j z'
 . ' w r s t g   , a e h p k'
 . ' l f m b q  `' . " y :  '
 

; main layer
CreateLayer(1)

; shifted chars 1st !
AddMappings(1, 1, qwertyMask32, layer1Sh)
AddMappings(1, 0, qwertyMask32, layer1)

; symbols layer
CreateSymbolsLayer(2, "Space", 0)

;------

; code only includes

; Global variables for pkl_guiLayers.ahk / layout image
; MUST be declared *before* scripts that use them
global ImgsDir := "%A_ScriptDir%\imgs\v1_opt2"
global ImgWidth := 284
global ImgHeight := 50
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

