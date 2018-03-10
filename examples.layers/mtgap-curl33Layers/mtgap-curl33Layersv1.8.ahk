/*
2017-05-23
v1.8 

using allCharsAddFrench.txt for char freqs !

no Space on main
trying to lower row change / home jump

might want to re-organize french stuff manually


setksize curlaz33
set numThreads 4
set keepShiftPairLetters 1
set keepShiftPairSpace 0
set keepShiftPairOther 0
use qwertyuiopéèasdfghjklàêzxcvbnmçôâQWERTYUIOPîûASDFGHJKLùïZXCVBNMüëö
set homeJump 150
set homeJumpIndex -40
set rowChangeUp 50
set rowChangeDown 50

Hands: 49% 50%
Fingers: 7.0% 9.0% 20% 14% 0.00% 0.00% 15% 15% 12% 8.0%

 ù  P  O  U  ô   Q  D  L  C  X  Z  ë
 I  N  E  A  â   B  H  T  S  R  W
 û  ü  Y  K  ï   F  M  V  G  J

 é  p  o  u  ê   q  d  l  c  x  z  ç
 i  n  e  a  ö   b  h  t  s  r  w
 î  è  y  k  à   f  m  v  g  j

Fitness:       15037975
Distance:      12617627
Finger work:   76163
Inward rolls:  10.88%
Outward rolls: 2.48%
Same hand:     34.21%
Same finger:   1.68%
Row change:    12.37%
Home jump:     0.92%
Ring jump:     2.36%
To center:     1.18%
To outside:    0.71%
*/

; -- layers --

#include ../common/layers.ahk
#include ../common/qwertyMasks.ahk
#include mtgap-curl33symLayerv1.0.ahk
 
layer1Sh := ""
 . ' ù  P  O  U  ô   Q  D  L  C  X  Z  ë '
 . ' I  N  E  A  â   B  H  T  S  R  W '
 . ' û  ü  Y  K  ï   F  M  V  G  J '

 
layer1 := ""
 . ' é  p  o  u  ê   q  d  l  c  x  z  ç '
 . ' i  n  e  a  ö   b  h  t  s  r  w '
 . ' î  è  y  k  à   f  m  v  g  j '
 

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

