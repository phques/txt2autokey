/* BEAKL10
http://shenafu.com/code/keyboard/beakl/index.php
http://shenafu.com/smf/index.php?topic=89.900

PQ mods:
- bottom left row 'angle' mod (moved to the left by one, Shift is used as dual mode key)
- wide mode, right moved 1 pos ->; leaves YHN column free, could use for something else ?
- capslock on b
*/

; code only includes

; Global variables for pkl_guiLayers.ahk / layout image
; MUST be declared *before* scripts that use them
global ImgsDir := A_ScriptDir . "\imgs\beakl9widepq"
global ImgWidth := 218
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
; (angle) / on dual mode lshift
; (wide)  v on dual mode rshift

AddMappings(1, 1, '  2 3 4      8 9 0    ',   '   + = *       ^ `% ~  ')
AddMappings(1, 1, 'q w e r t  u i o p [  ',   ' J H O U K   G C R F Z ')
AddMappings(1, 1, "a s d f g  j k l `; ' ",   ' Q I E A Y   D S T N B ') 
AddMappings(1, 1, 'z x c v    m , . /    ',   '   ! `` @ X  W M L P   ')
AddMappings(1, 1, '@LShift', '?')
AddMappings(1, 1, '@RShift', 'V')
AddMappings(1, 1, 'Capslock', '-')

; wide mode, right moved 1 pos ->; leaves YHN column free, could use for something else ?
AddMappings(1, 0, '1 2 3 4 5  7 8 9 0 -  ',  ' 4 0 1 2 3  7 6 5 9 8 ')
AddMappings(1, 0, 'q w e r t  u i o p [  ',  ' j h o u k   g c r f z ')
AddMappings(1, 0, "a s d f g  j k l `; ' ",  ' q i e a y   d s t n b ')
AddMappings(1, 0, 'z x c v    m , . /    ',  "   , ' . x   w m l p   ")
AddMappings(1, 0, '@LShift', '/')
AddMappings(1, 0, '@RShift', 'v')
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
