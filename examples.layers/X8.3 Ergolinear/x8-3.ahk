/*
2019-02-24
https://www.keyboard-design.com/index.html
http://shenafu.com/smf/index.php?topic=89.msg2592#msg2592
Layout by IanDoug

X8.3 
us anglez 

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
        q w e r t    y u i o p
        a s d f g    h j k l ; '
  @LShift z x c v b  n m , . /
)"

; ----

layer1 := "
(Join`r`n
  q y o u }     b m r c z   
  h i e a j     w t n s p # 
  { x : k _ SP  v d l f g   
)"

layer1sh := "
(Join`r`n
  Q Y O U @    B M R C Z   
  H I E A J    W T N S P ~ 
  | X ^ K \ ~  V D L F G   
)"

layer2 := "
(Join`r`n
  ? = < [ ]     + & $ > *   
  ( ) . , !     / ' - ; " % 
  8 4 0 2 6 ``  9 3 1 5 7  
)"

; main layer
CreateLayer(1)
AddMappings(1, 1, qwertyMask, layer1sh)
AddMappings(1, 0, qwertyMask, layer1)
AddMappings(1, 1, 'Space', 'Space') ; Shift-Space for continuous Space !

; punc layer
CreateLayer(2, 'Space', 0)
AddMappings(2, 0, qwertyMask, layer2)


; ---------------

; #include ../common/extend/extendSpace2.ahk

DisplayHelpImage()
return

;------

; other hotkey defs

#include ../common/commonHotkeys.ahk
