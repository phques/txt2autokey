/*

2018-04-29
v5

2019-02-05
adj for non-wide and no 2nd layer (move xjqz to normal layer)
possible "wid mode" right hand for punc layer

"intl", use with "deadKeys.klc" to enter accented chars (ie french, works pretty well!)
  `' on main, ^" on shift main
*/

; code only includes

; Global variables for pkl_guiLayers.ahk / layout image
; MUST be declared *before* scripts that use them

wideRightPunc := 0  ; when true, punc layer right hand is shifted to the right for easier access to alt key
if (wideRightPunc)
    subdir := "\imgs\v5flatIntl\widRightPunc"
else
    subdir := "\imgs\v5flatIntl"

global ImgsDir := A_ScriptDir . subdir

global ImgWidth := 150
global ImgHeight := 50
global CenterOnCurrWndMonitor := 1

#include ../../common/layers.ahk
#include ../../common/groups.ahk
#include ../../common/clipboardToBash.ahk
#include ../../common/fromPkl/pkl_guiLayers.ahk

qwertyMask := "
(Join`r`n
       q  w  e  r  t   y  u  i  o  p
       a  s  d  f  g   h  j  k  l  ; '
 @LShift  z  x  c  v   n  m  ,  .  /
)"


; ----

layer1 := "
(Join`r`n
       q  p  o  u  "   z  n  d  f  v
       g  i  a  e  x   l  r  t  s  c ``
       k  ,  .  y  '   j  h  w  m  b
)"

layer1sh := "
(Join`r`n
       Q  P  O  U  "   Z  N  D  F  V
       G  I  A  E  X   L  R  T  S  C  ^
       K  ?  !  Y  /   J  H  W  M  B
)"


; main layer
CreateLayer(1)
AddMappings(1, 1, qwertyMask, layer1sh)
AddMappings(1, 0, qwertyMask, layer1)
AddMappings(1, 0, 'Capslock', ';')


; punc layer

#include ../../common/puncLayer.ahk

layerAccessKey := "RAlt"
blockAccessKey := 1
layerNo := 3
CreatePuncLayer(layerNo, layerAccessKey, blockAccessKey, wideRightPunc)


; ---------------

#include ../../common/extend/extendSpace2.ahk

DisplayHelpImage()
return

;------

; other hotkey defs

#include ../../common/commonHotkeys.ahk
