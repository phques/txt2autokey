/*
2017-05-23
v1.9

using allCharsAddFrench.txt for char freqs !
2 Spaces on main
no anglez / curl

setksize main33
set numThreads 4
set keepShiftPairLetters 1
set keepShiftPairSpace 1
set keepShiftPairOther 0
use qwert yuiopéèasdfghjklàêzxcvbnmçôQWERT YUIOPîûASDFGHJKLùïZXCVBNMüâ

Hands: 53% 46%
Fingers: 8.0% 8.0% 16% 21% 0.00% 0.00% 14% 12% 12% 9.0%

 Y  P  O  U  â   J  G  N  D  F  Z  î
 A  I  E SP  K   L  R  H  T  S  B
 é  ô  ü  X  à   W  C  M  V  Q

 y  p  o  u  û   j  g  n  d  f  z  ï
 a  i  e SP  k   l  r  h  t  s  b
 ù  ê  ç  x  è   w  c  m  v  q

Fitness:       41698852
Distance:      12143395
Finger work:   56642
Inward rolls:  8.34%
Outward rolls: 2.10%
Same hand:     32.12%
Same finger:   1.88%
Row change:    11.73%
Home jump:     0.51%
Ring jump:     1.82%
To center:     2.50%
To outside:    0.44%

*/

; -- layers --

#include ../common/layers.ahk
#include ../common/qwertyMasks.ahk
#include mtgap-curl33symLayerv1.0.ahk
 
layer1Sh := ""
 . ' Y  P  O  U  â   J  G  N  D  F  Z  î '
 . ' A  I  E SP  K   L  R  H  T  S  B '
 . ' é  ô  ü  X  à   W  C  M  V  Q '

 
layer1 := ""
 . ' y  p  o  u  û   j  g  n  d  f  z  ï '
 . ' a  i  e SP  k   l  r  h  t  s  b '
 . ' ù  ê  ç  x  è   w  c  m  v  q '
 

; main layer
CreateLayer(1, 0, 1)

; shifted chars 1st !
AddMappings(1, 1, qwertyMask33Sh, layer1Sh)
AddMappings(1, 0, qwertyMask33, layer1)

; symbols layer, no space on main keys, dont block it here
CreateSymbolsLayer(2, "Space", 0)

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

