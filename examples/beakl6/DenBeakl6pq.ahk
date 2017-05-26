/* Den's BEAKL 6 candidate
   http://shenafu.com/smf/index.php?topic=89.new;topicseen#new
   
   PQ adjusted to 'anglez' fingering (swapped . x)
*/

; -- layers --

#include ../common/layers.ahk
#include ../common/qwertyMasks.ahk
#include ../mtgap-curl33Layers/mtgap-curl33symLayerv1.0.ahk

layer1Sh := ""
 . ' Q Y O U J   W D R C V '
 . ' H I E A `;  G T S N P '
 . ' ? " ! X Z   K M L B F '

 
layer1 := ""
 . ' q y o u j   w d r c v '
 . ' h i e a ,   g t s n p '
 . " / ' . x z   k m l b f "
 
; main layer
CreateLayer(1)

; shifted chars 1st !
AddMappings(1, qwertyMask30Sh, layer1Sh)
AddMappings(1, qwertyMask30, layer1)

; symbols layer
CreateSymbolsLayer(2, "Space", 0)

;------

; code only includes

; Global variables for pkl_guiLayers.ahk / layout image
; MUST be declared *before* scripts that use them
global ImgsDir := "%A_ScriptDir%"
global ImgWidth := 284
global ImgHeight := 46
global CenterOnCurrWndMonitor := 1

#include ../common/groups.ahk
#include ../common/clipboardToBash.ahk
#include ../common/fromPkl/pkl_guiLayers.ahk

DisplayHelpImage()
return

;------

; other hotkey defs

#include ../common/capsLock.ahk
#include ../common/extend/extendLAlt.ahk
#include ../common/commonHotkeys.ahk

;#include extraKeyDefs.ahk

