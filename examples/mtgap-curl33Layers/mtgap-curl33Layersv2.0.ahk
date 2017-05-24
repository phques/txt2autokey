/*
2017-05-23
2.0

using allCharsAddFrench.txt for char freqs !

With 1 Space on main (missing ö), 
trying to lower row change / home jump
vowels on right

setksize curlaz33
set numThreads 4
set keepShiftPairLetters 1
set keepShiftPairSpace 0
set keepShiftPairOther 0
use qwertyuiopéèasdfghjklàêzxcvbnmçô QWERTYUIOPîûASDFGHJKLùïZXCVBNMüëâ
set homeJump 150
set homeJumpIndex -40
set rowChangeUp 50
set rowChangeDown 50
sethandbias -20

Hands: 42% 57%
Fingers: 7.0% 9.0% 11% 15% 0.00% 0.00% 21% 16% 12% 9.0%

 W  P  H  C  Z   ç  U  O  L  Q  è  ï
 R  I  N  S  M   X  é  E  T  A  G
 Y  B  D  F  J   ü  V  ê  K  ù

 w  p  h  c  z   â  u  o  l  q  ë  à
 r  i  n  s  m   x SP  e  t  a  g
 y  b  d  f  j   û  v  î  k  ô

Fitness:       26864194
Distance:      21795212
Finger work:   63212
Inward rolls:  8.19%
Outward rolls: 2.27%
Same hand:     41.01%
Same finger:   1.68%
Row change:    16.16%
Home jump:     0.46%
Ring jump:     1.83%
To center:     1.39%
To outside:    1.85%

*/

; -- layers --

#include ../common/layers.ahk
#include ../common/qwertyMasks.ahk
#include mtgap-curl33symLayerv1.0.ahk
 
layer1Sh := ""
 . ' W  P  H  C  Z   ç  U  O  L  Q  è  ï '
 . ' R  I  N  S  M   X  é  E  T  A  G '
 . ' Y  B  D  F  J   ü  V  ê  K  ù '

 
layer1 := ""
 . ' w  p  h  c  z   â  u  o  l  q  ë  à '
 . ' r  i  n  s  m   x SP  e  t  a  g '
 . ' y  b  d  f  j   û  v  î  k  ô '
 

; main layer
CreateLayer(1, 0, 1)

; shifted chars 1st !
AddMappings(1, qwertyMask33Sh, layer1Sh)
AddMappings(1, qwertyMask33, layer1)

; symbols layer, no space on main keys, dont block it here
CreateSymbolsLayer(2, "Space", 0)

;------

; code only includes

; Global variables for pkl_guiLayers.ahk / layout image
; MUST be declared *before* scripts that use them
global ImgsDir := "%A_ScriptDir%\imgs\v1.3"
global ImgWidth := 248
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

