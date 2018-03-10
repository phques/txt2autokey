/*
2017-05-22  (modified mtgap for separate 'keepShiftedPairs' vars)
v1.1

using allCharsAddFrench.txt for char freqs !

setksize curlaz33
set numThreads 4
set keepShiftPairLetters 1
set keepShiftPairSpace 0
set keepShiftPairOther 0
use qwertyuiopéèasdfghjklàêzxcvbnmçôâQWERTYUIOPîûASDFGHJKLùïZXCVBNMüëö

Hands: 49% 50%
Fingers: 7.0% 11% 15% 16% 0.00% 0.00% 15% 15% 12% 8.0%

 à  P  U  Q  û   ù  M  D  C  X  Z  â
 I  N  E  A  è   F  H  T  S  R  W
 Y  î  O  K  ê   V  L  B  G  J

 ü  p  u  q  é   ë  m  d  c  x  z  ö
 i  n  e  a  ï   f  h  t  s  r  w
 y  ç  o  k  ô   v  l  b  g  j

Fitness:       14401406
Distance:      12345518
Finger work:   76163
Inward rolls:  9.35%
Outward rolls: 2.50%
Same hand:     34.41%
Same finger:   1.33%
Row change:    13.63%
Home jump:     2.53%
Ring jump:     2.03%
To center:     0.67%
To outside:    0.71%

*/

; -- layers --

#include ../common/layers.ahk
#include ../common/qwertyMasks.ahk
#include mtgap-curl33symLayerv1.0.ahk
 
layer1Sh := ""
 . ' à  P  U  Q  û   ù  M  D  C  X  Z  â '
 . ' I  N  E  A  è   F  H  T  S  R  W '
 . ' Y  î  O  K  ê   V  L  B  G  J '

 
layer1 := ""
 . ' ü  p  u  q  é   ë  m  d  c  x  z  ö '
 . ' i  n  e  a  ï   f  h  t  s  r  w '
 . ' y  ç  o  k  ô   v  l  b  g  j '
 

; main layer
CreateLayer(1)

; shifted chars 1st !
AddMappings(1, 1, qwertyMask33Sh, layer1Sh)
AddMappings(1, 0, qwertyMask33, layer1)

; symbols layer
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

