/* 
 X7.1H Ergolinear (Ian Douglas)

 http://www.keyboard-design.com/
 see also http://shenafu.com/smf/index.php?topic=89.0

PQ 2018-03-31
X7.1H-en on SmartYao LY092-SN on qwerty base + few chgs for special keys

*/

; code only includes

; Global variables for pkl_guiLayers.ahk / layout image
; MUST be declared *before* scripts that use them
global ImgsDir := A_ScriptDir . "\imgs\x7.1h-USpq"  ; same image
global ImgWidth := 218
global ImgHeight := 62
global CenterOnCurrWndMonitor := 1

#include ../common/groups.ahk
#include ../common/clipboardToBash.ahk
#include ../common/fromPkl/pkl_guiLayers.ahk
#include ../common/layers.ahk
 
; -- layers --

; must be included before the layer definitions
; otherwise the space / H / h does not work
; actually, h sometimes does not work even now
; Well, it seems that this is only a problem with my 'two half SmartYaos' setup
#include ../common/extend/extendSpace2.ahk

; main layer
CreateLayer(1)

; shifted chars (declare 1st!)
AddMappings(1, 1, 'q w e r t  y u i o p',    'Q Y O U @   B M R C Z   ')
AddMappings(1, 1, "a s d f g  h j k l `; '", '~ I E A J   W T N S K # ') 
AddMappings(1, 1, 'z x c v b  n m , . /',    '| P ^ G \   V D L F X   ')

; main
AddMappings(1, 0, 'q w e r t  y u i o p',    ' q y o u }  b m r c z   ')
AddMappings(1, 0, "a s d f g  h j k l `; '", " ' i e a j  w t n s k # ")
AddMappings(1, 0, 'z x c v b  n m , . /',    ' { p : g _  v d l f x   ')


; -- layer 2 --

; -- punctuation layer (Numpad5) --

; since SmartYao LY092-SN doesnt output RAlt,
; we use num5 as AltGr key (physically placed under thumb)
CreateLayer(2, "Numpad5", 1)

AddMappings(2, 0, 'q w e r t  y u i o p',    ' [ $ ? & ]   + > = * ``   ')
AddMappings(2, 0, "a s d f g  h j k l `; '", ' ( " . , !   / `; - ) < `% ')
AddMappings(2, 0, 'z x c v b  n m , . /',    ' 8 4 0 2 6   9 3 1 5 7   ')


; Space= Space / H / h (main, shifted, altGr)
AddMappings(1, 1, 'Space', 'H')
AddMappings(2, 0, 'Space', 'h')
AddMappings(1, 0, 'Space', 'Space')

;;;

; #include ../common/extend/extendSpace2.ahk

DisplayHelpImage()
return

;------

; other hotkey defs

#include ../common/extend/extendSpace.ahk
#include ../common/commonHotkeys.ahk
