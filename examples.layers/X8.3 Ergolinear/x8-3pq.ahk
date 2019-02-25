/*
2019-02-24
https://www.keyboard-design.com/index.html
http://shenafu.com/smf/index.php?topic=89.msg2592#msg2592
Layout by IanDoug

X8.3 
adapted by PQuesnel
us anglez 

- swap b/
- moved few syms around, put BackSpace on '
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
  q y o  u }    / m r c z   
  h i e  a j    w t n s p BS
  { x `` k : _  v d l f g   
)"

layer1sh := "
(Join`r`n
  Q Y O U @     ? M R C Z   
  H I E A J     W T N S P # 
  | X ^ K \ SP  V D L F G   
)"

layer2 := "
(Join`r`n
  ? = < [ ]     + & $ > *   
  ( ) . , !     b ' - ; " % 
  8 4 0 2 6 ~   9 3 1 5 7  
)"

; main layer
CreateLayer(1)
AddMappings(1, 1, qwertyMask, layer1sh)
AddMappings(1, 0, qwertyMask, layer1)

; punc layer
CreateLayer(2, 'Space', 0)
AddMappings(2, 1, 'h', 'B') ; only guy on shift-alt-gr, so just add it manually

AddMappings(2, 0, qwertyMask, layer2)
AddMappings(2, 0, 'LShift', '8') ; need to redo this manually too for it to work !?


; ---------------

; this is intended for longer spans of edition
; otherwisem just use BS or Ctrl-BS and retype !
#include ../common/extend/extend2Base.ahk
SetupExtend2('LAlt')

DisplayHelpImage()
return

;------

; other hotkey defs

#include ../common/commonHotkeys.ahk
