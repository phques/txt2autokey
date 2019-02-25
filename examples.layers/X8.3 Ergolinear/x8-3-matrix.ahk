/*
2019-02-24
https://www.keyboard-design.com/index.html
http://shenafu.com/smf/index.php?topic=89.msg2592#msg2592
Layout by IanDoug

for SmartYao (qwertyRef setup)

*/

; code only includes

; Global variables for pkl_guiLayers.ahk / layout image
; MUST be declared *before* scripts that use them

global ImgsDir := A_ScriptDir . "\imgs"

global ImgWidth := 176
global ImgHeight := 54
global CenterOnCurrWndMonitor := 1

#include ../common/layers.ahk
#include ../common/groups.ahk
#include ../common/clipboardToBash.ahk
#include ../common/fromPkl/pkl_guiLayers.ahk

qwertyMask := "
(Join`r`n
 q  w  e  r  t   y  u  i  o  p
 a  s  d  f  g   h  j  k  l  ; '
 z  x  c  v  b   n  m  ,  .  /
 			Space
)"

; ----

layer1 := "
(Join`r`n
  q y o u }            b m r c z   
  h i e a j            w t n s p # 
  { x : k _            v d l f g   
  			Space
)"

layer1sh := "
(Join`r`n
  Q Y O U @            B M R C Z   
  H I E A J            W T N S P ~ 
  | X ^ K \            V D L F G   
  			~
)"

; Note that altGr-Space for ` does work, 
; but when used for French, it does not always work!
layer2 := "
(Join`r`n
  ? = < [ ]            + & $ > *   
  ( ) . , !            / ' - ; " % 
  8 4 0 2 6            9 3 1 5 7  
  			``
)"

; include this one 1st so that shift-space etc work !
#include ../common/extend/extendSpace2.ahk

; shift / main layer
CreateLayer(1)
AddMappings(1, 1, qwertyMask, layer1sh)
AddMappings(1, 0, qwertyMask, layer1)

; punc layer
CreateLayer(2, 'Numpad5', 1)
AddMappings(2, 0, qwertyMask, layer2)

; ---------------

DisplayHelpImage()
return

;------

; other hotkey defs

#include ../common/commonHotkeys.ahk
