/* Den's BEAKL 6 candidate
   http://shenafu.com/smf/index.php?topic=89.new;topicseen#new
   
Hands: 47% 52%
Fingers: 5.0% 10% 19% 14% 0.00% 0.00% 20% 16% 11% 5.0%

 Q  Y  O  U  J   W  D  R  C  V
 H  I  E  A  ;   G  T  S  N  P
 ?  "  X  !  Z   K  M  L  B  F

 q  y  o  u  j   w  d  r  c  v
 h  i  e  a  ,   g  t  s  n  p
 /  '  x  .  z   k  m  l  b  f

Fitness:       19033905
Distance:      13885095
Finger work:   0
Inward rolls:  5.41%
Outward rolls: 0.84%
Same hand:     29.35%
Same finger:   2.30%
Row change:    12.34%
Home jump:     1.82%
Ring jump:     4.69%
To center:     3.59%

*/

; -- layers --

#include ../common/layers.ahk
#include ../common/qwertyMasks.ahk
;#include mtgap-curl33symLayerv1.0.ahk
 
layer1Sh := ""
 . ' Q Y O U J   W D R C V '
 . ' H I E A `;  G T S N P '
 . ' ? " X ! Z   K M L B F '

 
layer1 := ""
 . ' q y o u j   w d r c v '
 . ' h i e a ,   g t s n p '
 . " / ' x . z   k m l b f "
 
; main layer
CreateLayer(1)

; shifted chars 1st !
AddMappings(1, 1, qwertyMask30, layer1Sh)
AddMappings(1, 0, qwertyMask30, layer1)

; symbols layer
;CreateSymbolsLayer(2, "Space", 0)

;------

; code only includes

; Global variables for pkl_guiLayers.ahk / layout image
; MUST be declared *before* scripts that use them
global ImgsDir := "%A_ScriptDir%\imgs\v1_opt2"
global ImgWidth := 202
global ImgHeight := 56
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

