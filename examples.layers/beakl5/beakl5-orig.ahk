/* BEAKL5
http://shenafu.com/code/keyboard/beakl/index.php
http://shenafu.com/smf/index.php?topic=89.900
*/

; code only includes

; Global variables for pkl_guiLayers.ahk / layout image
; MUST be declared *before* scripts that use them
global ImgsDir := A_ScriptDir . "\imgs\beakl5"
global ImgWidth := 240
global ImgHeight := 74
global CenterOnCurrWndMonitor := 1

#include ../common/groups.ahk
#include ../common/clipboardToBash.ahk
#include ../common/fromPkl/pkl_guiLayers.ahk
#include ../common/layers.ahk


; -- layers --

 
; main layer
CreateLayer(1)

; shifted chars (declare 1st!)

AddMappings(1, 1, '  2 3 4      7 8 9  ',    '  + = *      ^ `% ~ ')  ;; kept this frm beakl9
AddMappings(1, 1, 'q w e r t  y u i o p',    'Q Y O U X  F G R C V')
AddMappings(1, 1, "a s d f g  h j k l `; '", 'H I E A Y  L S T N W Z ') 
AddMappings(1, 1, 'z x c v b  n m , . /',    '`` ! \ : ?   B D M P K')
AddMappings(1, 1, 'Capslock', 'J')

;AddMappings(1, 0, '1 2 3 4 5  6 7 8 9 0',    '1 2 3 4 5  6 7 8 9 0')
AddMappings(1, 0, 'q w e r t  y u i o p',    'q y o u x  f g r c v')
AddMappings(1, 0, "a s d f g  h j k l `; '", 'h i e a y  l s t n w z')
AddMappings(1, 0, 'z x c v b  n m , . /',    "' `" ( , )   b d m p k")
AddMappings(1, 0, 'Capslock', 'j')


; -- layer 2 --

CreateLayer(2, "RAlt", 0)

; -- numpad layer (Shift RAlt) (This is beakl9!!) --

AddMappings(2, 1, '  2 3 4   7 8 9 ',   '  + = *   ^ `% ~ ')  ;; kept this frm beakl9
AddMappings(2, 1, 'q w e r t ',   'Tab 7 2 4 6 ')
AddMappings(2, 1, "a s d f g ",   '8   0 1 3 5 ')
AddMappings(2, 1, 'z x c v b ',   '/   , 9 . : ')
AddMappings(2, 1, 'Capslock', '-')

; -- punctuation layer (RAlt) --

AddMappings(2, 0, '  2 3 4      7 8 9    ',   '   + = *      ^ `% ~  ') ;; kept this frm beakl9
AddMappings(2, 0, 'q w e r t  y u i o p  ',   ' & } _ { #  ~ [ $ ] | ')
AddMappings(2, 0, "a s d f g  h j k l `; ",  ' `; / 0 - +  | < 1 > * ')
AddMappings(2, 0, 'z x c v b  n m , . /  ',   ' 6 7 8 9 %  ^ 2 3 4 5 ')
;AddMappings(2, 0, 'Capslock', '-')

;------

;DisplayHelpImage()
return

;------

; other hotkey defs

#include ../common/extend/extendSpace.ahk
#include ../common/commonHotkeys.ahk

