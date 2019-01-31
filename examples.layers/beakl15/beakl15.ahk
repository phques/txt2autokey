/* BEAKL15
http://shenafu.com/code/keyboard/beakl/index.php
http://shenafu.com/smf/index.php?topic=89.msg2221#msg2221

*/

; -- layers --

; code only includes

; Global variables for pkl_guiLayers.ahk / layout image
; MUST be declared *before* scripts that use them
global ImgsDir := A_ScriptDir . "\imgs\beakl15"
global ImgWidth := 240
global ImgHeight := 74
global CenterOnCurrWndMonitor := 1

#include ../common/groups.ahk
#include ../common/clipboardToBash.ahk
#include ../common/fromPkl/pkl_guiLayers.ahk
#include ../common/layers.ahk
 
; main layer
CreateLayer(1)

; shifted chars (declare 1st!)
AddMappings(1, 1, ' q w e r t  y u i o p    ',  ' Q H O U X  G C R F Z    ')
AddMappings(1, 1, " a s d f g  h j k l `; ' ",  ' Y I E A @  D S T N B `; ') 
AddMappings(1, 1, ' z x c v b  n m , . /    ',  ' J ? ! K `` W M L P V    ')

AddMappings(1, 1, 'Capslock', '-')


AddMappings(1, 0, ' 1 2 3 4 5  6 7 8 9 0    ',  ' 4 0 1 2 3  7 6 5 9 8    ')
AddMappings(1, 0, ' q w e r t  y u i o p    ',  ' q h o u x  g c r f z    ')
AddMappings(1, 0, " a s d f g  h j k l `; ' ",  ' y i e a .  d s t n b `; ')
AddMappings(1, 0, ' z x c v b  n m , . /    ',  " j / , k '  w m l p v    ")

AddMappings(1, 0, 'Capslock', '-')


; -- layer 2 --

CreateLayer(2, "RAlt", 1)

; -- numpad layer (Shift RAlt) --
; shifted chars (1st)
AddMappings(2, 1, '   2 3 4   7 8 9 ',   '  + = *      ^ `% ~ ')
AddMappings(2, 1, ' q w e r t ',   ' Tab 5 2 3 : ')
AddMappings(2, 1, " a s d f g ",   ' 7   . 1 0 4 ')
AddMappings(2, 1, ' z x c v b ',   ' /   6 9 8 , ')

AddMappings(2, 1, 'Capslock', '-')

; -- punctuation layer (RAlt) --
AddMappings(2, 0, '   w e r      u i o      ',   '   < $ >     [ _ ]      ')
AddMappings(2, 0, " a s d f g  h j k l `; ' ",   ' \ ( " ) # % { = } | `; ')
AddMappings(2, 0, '   x c v      m , .      ',   '   : * +     & ^ ~      ')

AddMappings(2, 0, 'Capslock', '-')

;------

#include ../common/extend/extendSpace2.ahk

DisplayHelpImage()
return

;------

; other hotkey defs

; #include ../common/extend/extendSpace.ahk
#include ../common/commonHotkeys.ahk

