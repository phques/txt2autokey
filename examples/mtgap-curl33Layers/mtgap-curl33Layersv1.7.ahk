/*
2017-05-23
v1.7 (todo)

using allCharsAddFrench.txt for char freqs !

With 1 Space on main (missing ö), 
trying to lower row change / home jump

might want to re-organize french stuff manually

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

def set homeJump 100
def set homeJumpIndex -90
def set rowChangeUp 15
def set rowChangeDown 10

Hands: 51% 48%
Fingers: 7.0% 8.0% 16% 21% 0.00% 0.00% 17% 12% 11% 9.0%

 ç  Y  O  U  è   J  P  M  C  B  Q  Z
 A  I  E  é  ï   L  H  T  S  R  W
 ë  â  K  X  û   F  N  G  D  V

 ü  y  o  u  ô   j  p  m  c  b  q  z
 a  i  e SP  à   l  h  t  s  r  w
 î  ê  k  x  ù   f  n  g  d  v

Fitness:       18505197
Distance:      15412507
Finger work:   0
Inward rolls:  7.96%
Outward rolls: 1.82%
Same hand:     30.81%
Same finger:   1.65%
Row change:    11.33%
Home jump:     0.49%
Ring jump:     1.56%
To center:     1.62%
To outside:    0.56%


*/

; -- layers --

#include ../common/layers.ahk
#include ../common/qwertyMasks.ahk
#include mtgap-curl33symLayerv1.0.ahk
 
layer1Sh := ""
 . ' ç  Y  O  U  è   J  P  M  C  B  Q  Z '
 . ' A  I  E  é  ï   L  H  T  S  R  W '
 . ' ë  â  K  X  û   F  N  G  D  V '

 
layer1 := ""
 . ' ü  y  o  u  ô   j  p  m  c  b  q  z '
 . ' a  i  e SP  à   l  h  t  s  r  w '
 . ' î  ê  k  x  ù   f  n  g  d  v '
 

; main layer
CreateLayer(1, 0, 1)

; shifted chars 1st !
AddMappings(1, 1, qwertyMask33, layer1Sh)
AddMappings(1, 0, qwertyMask33, layer1)

; symbols layer
CreateSymbolsLayer(2, "Space", 1)

;------

; code only includes

; Global variables for pkl_guiLayers.ahk / layout image
; MUST be declared *before* scripts that use them
global ImgsDir := "%A_ScriptDir%\imgs\v1.7"
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

