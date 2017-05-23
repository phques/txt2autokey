/*
2017-05-22 (modified mtgap for separate 'keepShiftedPairs' vars)
v1.2

using allCharsAddFrench.txt for char freqs !

With 1 Space on main (missing ö), 
in 'use' below, need Sp to be on same key as non-letter so they can both move freely

setksize curlaz33
set numThreads 4
set keepShiftPairLetters 1
set keepShiftPairSpace 0
set keepShiftPairOther 0
use qwertyuiopéèasdfghjklàêzxcvbnmçô QWERTYUIOPîûASDFGHJKLùïZXCVBNMüëâ

Hands: 51% 48%
Fingers: 7.0% 8.0% 16% 21% 0.00% 0.00% 16% 13% 12% 9.0%

 ç  Y  O  U  î   J  P  D  L  B  Q  Z
 A  I  E  ü  ë   M  H  T  S  R  W
 ê  à  V  X  â   F  N  G  C  K

 ï  y  o  u  û   j  p  d  l  b  q  z
 a  i  e SP  ô   m  h  t  s  r  w
 è  é  v  x  ù   f  n  g  c  k

Fitness:       18021339
Distance:      15056662
Finger work:   1952
Inward rolls:  8.19%
Outward rolls: 1.97%
Same hand:     31.98%
Same finger:   1.56%
Row change:    12.68%
Home jump:     1.49%
Ring jump:     1.59%
To center:     0.98%
To outside:    0.56%
*/

; -- layers --

#include ../common/layers.ahk
#include ../common/qwertyMasks.ahk
#include mtgap-curl33symLayerv1.0.ahk
 
layer1Sh := ""
 . ' ç  Y  O  U  î   J  P  D  L  B  Q  Z '
 . ' A  I  E  ü  ë   M  H  T  S  R  W '
 . ' ê  à  V  X  â   F  N  G  C  K '

 
layer1 := ""
 . ' ï  y  o  u  û   j  p  d  l  b  q  z '
 . ' a  i  e SP  ô   m  h  t  s  r  w '
 . ' è  é  v  x  ù   f  n  g  c  k '
 

; main layer
CreateLayer(1, 0, 1)

; shifted chars 1st !
AddMappings(1, qwertyMask33Sh, layer1Sh)
AddMappings(1, qwertyMask33, layer1)

; symbols layer
CreateSymbolsLayer(2, "Space", 1)

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

