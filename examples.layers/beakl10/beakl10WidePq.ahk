/* BEAKL10
http://shenafu.com/code/keyboard/beakl/index.php
http://shenafu.com/smf/index.php?topic=89.900

PQ mods:
- bottom left row 'angle' mod (moved to the left by one, Shift is used as dual mode key)
- capslock on b
*/

; code only includes

; Global variables for pkl_guiLayers.ahk / layout image
; MUST be declared *before* scripts that use them
global ImgsDir := A_ScriptDir . "\imgs\beakl10widepq"
global ImgWidth := 206
global ImgHeight := 62
global CenterOnCurrWndMonitor := 1

#include ../common/groups.ahk
#include ../common/clipboardToBash.ahk
#include ../common/fromPkl/pkl_guiLayers.ahk
#include ../common/layers.ahk
 
; -- layers --

; main layer
CreateLayer(1)

; shifted chars (declare 1st!)
; k and 6 on dual mode rshift

AddMappings(1, 1, '  2 3 4      8 9 0    ',   '   + = *        ^ `% ~  ')
AddMappings(1, 1, 'q w e r t  u i o p [  ',   ' Q H O U X    G D N M V ')
AddMappings(1, 1, "a s d f g  j k l `; ' ",   ' Y I E A @    C S R T W ') 
AddMappings(1, 1, 'z x c v b  m , . /    ',   '  ? `` ! Z :  B P L F   ')
AddMappings(1, 1, '@LShift', 'J')
AddMappings(1, 1, '@RShift', 'K')
AddMappings(1, 1, 'Capslock', '-')

; wide mode, right moved 1 pos ->; leaves YHN column free, could use for something else ?
AddMappings(1, 0, '1 2 3 4 5  7 8 9 0 -  ',  ' 4 0 1 2 3  7 6 5 9 8 ')
AddMappings(1, 0, 'q w e r t  u i o p [  ',  ' q h o u x  g d n m v ')
AddMappings(1, 0, "a s d f g  j k l `; ' ",  ' y i e a .  c s r t w ')
AddMappings(1, 0, 'z x c v    m , . /    ',  "   / ' , z  b p l f   ")
AddMappings(1, 0, '@LShift', 'j')
AddMappings(1, 0, '@RShift', 'k')
AddMappings(1, 0, 'Capslock', '-')
AddMappings(1, 0, 'b', 'Capslock')

; -- layer 2 --

CreateLayer(2, "RAlt", 0)

; bottom row shifted left (angle mod)
AddMappings(2, 1, '  2 3 4    8 9 0 ',   '  + = *      ^ `% ~ ')
AddMappings(2, 1, 'q w e r t ',   'Tab 7 2 4 6 ')
AddMappings(2, 1, "a s d f g ",   '8   0 1 3 5 ')
AddMappings(2, 1, 'z x c v b ',   '   , 9 . : : ')
; AddMappings(2, 1, '@LShift', '/')
AddMappings(2, 1, 'Capslock', '-')

; -- punctuation layer (RAlt) --
; bottom row shifted left (angle mod)
; orig BEAKL9-10
; AddMappings(2, 0, '  2 3 4      7 8 9      ',   '  + = *      ^ `% ~    ')
; AddMappings(2, 0, '  w e r t    u i o      ',   '  { _ } &    [ " ]     ')
; AddMappings(2, 0, "a s d f g  h j k l `; ' ",   '\ ( 1 ) #  $ < 0 > | `;')
; AddMappings(2, 0, 'z x c v b    m , . /    ',   '4 3 2 : :    9 8 7 6')
; AddMappings(2, 0, '@LShift', '5')
; AddMappings(2, 0, 'Capslock', '-')

; pq 2018-03
AddMappings(2, 0, '    3          9 0 -   ',   '     _        ^ `% ~    ')
AddMappings(2, 0, 'q w e r t    i o p [ ] ',   ' : { = } !    [ " ] \ $ ')
AddMappings(2, 0, "a s d f g  j k l `; '  ",   ' & ( 1 ) *  + < 0 > `;  ')
AddMappings(2, 0, 'z x c v b    m , . /   ',   ' 4 3 2 - :  | 9 8 7     ')
AddMappings(2, 0, '@LShift', '5')
AddMappings(2, 0, '@RShift', '6')
AddMappings(2, 0, 'Capslock', '#')

;;;
#include ../common/extend/extendSpaceWide2.ahk

DisplayHelpImage()
return

;------

; other hotkey defs

; #include ../common/extend/extendSpace.ahk
#include ../common/commonHotkeys.ahk
