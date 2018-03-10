/*
2017-05-22 (modified mtgap for separate 'keepShiftedPairs' vars)
v1.3

using allCharsAddFrench.txt for char freqs !

With 1 Space on main (missing ö), 
in 'use' below,  need Sp to be on same key as no-letter so they can both move freely

reversed hands

setksize curlaz33
use qwertyuiopéèasdfghjklàêzxcvbnmçô QWERTYUIOPîûASDFGHJKLùïZXCVBNMüëâ
set numThreads 4
set keepShiftPairLetters 1
set keepShiftPairSpace 0
set keepShiftPairOther 0
sethandbias -20

Hands: 43% 56%
Fingers: 6.0% 11% 10% 16% 0.00% 0.00% 21% 16% 12% 7.0%

 B  L  C  G  J   ê  U  O  I  K  ü  ï
 R  N  S  T  F   X  ô  E  H  A  Q
 M  W  D  P  Z   ë  V  ç  Y  ù

 b  l  c  g  j   è  u  o  i  k  â  é
 r  n  s  t  f   x SP  e  h  a  q
 m  w  d  p  z   û  v  î  y  à

Fitness:       26439475
Distance:      22401648
Finger work:   69302
Inward rolls:  7.53%
Outward rolls: 1.70%
Same hand:     33.77%
Same finger:   1.93%
Row change:    15.38%
Home jump:     1.36%
Ring jump:     1.45%
To center:     0.73%
To outside:    0.20%

*/

; -- layers --

#include ../common/layers.ahk
#include ../common/qwertyMasks.ahk
#include mtgap-curl33symLayerv1.0.ahk
 
layer1Sh := ""
 . ' B  L  C  G  J   ê  U  O  I  K  ü  ï '
 . ' R  N  S  T  F   X  ô  E  H  A  Q '
 . ' M  W  D  P  Z   ë  V  ç  Y  ù '

 
layer1 := ""
 . '  b  l  c  g  j   è  u  o  i  k  â  é '
 . '  r  n  s  t  f   x SP  e  h  a  q '
 . '  m  w  d  p  z   û  v  î  y  à '
 

; main layer
CreateLayer(1, 0, 1)

; shifted chars 1st !
AddMappings(1, 1, qwertyMask33Sh, layer1Sh)
AddMappings(1, 0, qwertyMask33, layer1)

; symbols layer
CreateSymbolsLayer(2, "Space", 1)

;------

; code only includes

; Global variables for pkl_guiLayers.ahk / layout image
; MUST be declared *before* scripts that use them
global ImgsDir := A_ScriptDir . "\imgs\v1.3"
global ImgWidth := 248
global ImgHeight := 46
global CenterOnCurrWndMonitor := 1

#include ../common/groups.ahk
#include ../common/clipboardToBash.ahk
#include ../common/fromPkl/pkl_guiLayers.ahk

;DisplayHelpImage()
return

;------

; other hotkey defs

#include ../common/capsLock.ahk
#include ../common/extend/extendLAlt.ahk
#include ../common/commonHotkeys.ahk

;#include extraKeyDefs.ahk

