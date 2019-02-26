/*
2019-02-25
https://www.keyboard-design.com/index.html
http://shenafu.com/smf/index.php?topic=89.msg2592#msg2592
Layout by IanDoug

X8.3 b5
adapted by PQuesnel
us anglez 

- moved few syms around, ` on main for french
  had to place more chars since x8.3b5 uses two thumb keys for chars
  `~{}

*/

; code only includes

; Global variables for pkl_guiLayers.ahk / layout image
; MUST be declared *before* scripts that use them

global ImgsDir := A_ScriptDir . "\imgs\x8-3b5pq"

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
  q y o u [            b d r c k   
  h i e a Enter        g t n s p = 
  j x : z _ ``         w m l f v   
)"

layer1sh := "
(Join`r`n
  Q Y O U @            B D R C K   
  H I E A }            G T N S P | 
  J X ^ Z / ~          W M L F V   
)"

layer2 := "
(Join`r`n
  ? < # % ]            $ & * > +   
  ( ) . , {            ; " - ' / ! 
  8 4 0 2 6 SP         9 3 1 5 7   
)"

; main layer
CreateLayer(1)
AddMappings(1, 1, qwertyMask, layer1sh)
AddMappings(1, 0, qwertyMask, layer1)
; BackSpace on Enter
AddMappings(1, 0, 'Enter','BackSpace')

; punc layer accessed through space
CreateLayer(2, 'Space', 0)

AddMappings(2, 0, qwertyMask, layer2)
; need to redo this manually too for it to work !?
AddMappings(2, 0, 'LShift', '8') 


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
