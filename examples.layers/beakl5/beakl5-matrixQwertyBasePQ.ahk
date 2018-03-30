/* BEAKL5 on SmartYao LY092-SN
http://shenafu.com/code/keyboard/beakl/index.php
http://shenafu.com/smf/index.php?topic=89.900

- This script adds Capslock on `

*/

; code only includes

; Global variables for pkl_guiLayers.ahk / layout image
; MUST be declared *before* scripts that use them
; global ImgsDir := A_ScriptDir . "\imgs\beakl5"
global ImgsDir := A_ScriptDir . "\imgs\beakl5matrixpq"
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

AddMappings(1, 1, '    2 3 4      7 8 9  ',    '    + = *      ^ `% ~ ')  ;;  beakl9
AddMappings(1, 1, '  q w e r t  y u i o p',    '  Q Y O U X  F G R C V')
AddMappings(1, 1, "- a s d f g  h j k l `; '", 'J H I E A @  L S T N W Z ') 
AddMappings(1, 1, '  z x c v b  n m , . /',    '  `` ! & | ? B D M P K')

AddMappings(1, 0, '  1 2 3 4 5  6 7 8 9 0 ',   '  4 0 1 2 3  7 6 5 9 8 ') ; BEAKL9
AddMappings(1, 0, '  q w e r t  y u i o p',    '  q y o u x  f g r c v')
AddMappings(1, 0, "- a s d f g  h j k l `; '", 'j h i e a .  l s t n w z')
AddMappings(1, 0, '  z x c v b  n m , . /',    "  ' `" ( , ) b d m p k")

AddMappings(1, 0, '``', 'CapsLock')


; -- layer 2 --

; since SmartYao LY092-SN doesnt output RAlt,
; we use num5 as AltGr key (physically placed under thumb)
CreateLayer(2, "Numpad5", 1)

; -- numpad layer (Shift RAlt) (This is beakl9!!) --

AddMappings(2, 1, '  2 3 4   7 8 9 ',   '  + = *   ^ `% ~ ')  ;; kept this frm beakl9
AddMappings(2, 1, 'q w e r t ',   'Tab 7 2 4 6 ')
AddMappings(2, 1, "a s d f g ",   '8   0 1 3 5 ')
AddMappings(2, 1, 'z x c v b ',   '/   , 9 . : ')

AddMappings(2, 1, '-', '-')

; -- punctuation layer (RAlt) --

; orig BEAKL5
; AddMappings(2, 0, '  2 3 4      7 8 9    ',   '   + = *      ^ `% ~  ') ;; kept this frm beakl9
; AddMappings(2, 0, 'q w e r t  y u i o p  ',   ' & } _ { #  ~ [ $ ] | ')
; AddMappings(2, 0, "a s d f g  h j k l `; ",  ' `; / 0 - +  | < 1 > * ')
; AddMappings(2, 0, 'z x c v b  n m , . /  ',   ' 6 7 8 9 %  ^ 2 3 4 5 ')

; PQ 2018-03v2 modified punc/sym from BEAKL9
; extra mods to fit w. beakl5 !              
AddMappings(2, 0, '      3        7 8 9      ',   '      _         ^ `% ~     ')
AddMappings(2, 0, '  q w e r t    u i o p    ',   '  : { = } !     [ " ] \    ')
AddMappings(2, 0, "- a s d f g  h j k l `; ' ",   '# / ( 1 ) *   + < 0 > `; $  ')
AddMappings(2, 0, '  z x c v b    m , . /    ',   '  5 4 3 2 -     9 8 7 6    ')


;------

#include ../common/extend/extendSpace2.ahk

DisplayHelpImage()
return

;------

; other hotkey defs

; #include ../common/extend/extendSpace.ahk
#include ../common/commonHotkeys.ahk

