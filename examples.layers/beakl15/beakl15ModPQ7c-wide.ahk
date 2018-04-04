/* modified BEAKL15 PQ7c
http://shenafu.com/code/keyboard/beakl/index.php
http://shenafu.com/smf/index.php?topic=89.msg2221#msg2221

- bottom left row 'angle' mod 
- wide mode, right moved 1 pos -> ';' moved altGr on capslock (where '-' is on main)
- capslock on b

*/

; code only includes

; Global variables for pkl_guiLayers.ahk / layout image
; MUST be declared *before* scripts that use them
global ImgsDir := A_ScriptDir . "\imgs\modPQ7c"
global ImgWidth := 218
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

; (angle) j on dual mode lshift
; (wide)  k on dual mode rshift

AddMappings(1, 1, 'q w e r   i o p [  ',   ' Q H O U  C R F Z ')
AddMappings(1, 1, "a s d f   k l `; ' ",   ' Y I E A  S T N B ') 
AddMappings(1, 1, 'z x c     , . /    ',   '   ! ? K  D L P   ')

AddMappings(1, 1, '@LShift', 'J')
AddMappings(1, 1, '@RShift', 'V')
AddMappings(1, 1, 'Capslock', '-')

; wide mode, right moved 1 pos ->
AddMappings(1, 0, '1 2 3 4 5  7 8 9 0 -  ',  ' 4 0 1 2 3  7 6 5 9 8 ')
AddMappings(1, 0, 'q w e r      i o p [  ',  ' q h o u      c r f z ')
AddMappings(1, 0, "a s d f      k l `; ' ",  ' y i e a      s t n b ')
AddMappings(1, 0, 'z x c       , . /    ',  "   , / k      d l p   ")
AddMappings(1, 0, '@LShift', 'j')
AddMappings(1, 0, '@RShift', 'v')
AddMappings(1, 0, 'Capslock', '-')
AddMappings(1, 0, 'b', 'Capslock')

; -- layer 2 --

CreateLayer(2, "RAlt", 0)

; bottom row shifted left (angle mod)
; ## Chnages above interferes w. numpad 9, used by 'X'
; AddMappings(2, 1, '  2 3 4    8 9 0 ',   '  + = *      ^ `% ~ ')
; AddMappings(2, 1, 'q w e r t ',   'Tab 7 2 4 6 ')
; AddMappings(2, 1, "a s d f g ",   '8   0 1 3 5 ')
; AddMappings(2, 1, 'z x c v b ',   '   , 9 . : : ')
; ; AddMappings(2, 1, '@LShift', '/')
; AddMappings(2, 1, 'Capslock', '-')

; a few chars on altGr layer, uppercase here
AddMappings(2, 1, '     k    ',  '    M   ')
AddMappings(2, 1, ' c   , .  ',  ' X  G W ')

; -- punctuation layer (RAlt) --
; bottom row shifted left (angle mod)

AddMappings(2, 0, '   2 3          9 0    ', '   % _           ^ ~    ')
AddMappings(2, 0, ' q w e r t    i o p [  ', ' : < " > ``    [ = ] @  ')
AddMappings(2, 0, " a s d f g  j k l `; ' ", ' \ ( . ) #   $ m { } |  ')
AddMappings(2, 0, ' z x c v      , . /    ', "   - x ' !     g w +    ")
AddMappings(2, 0, '@LShift', '*')
AddMappings(2, 0, '@RShift', '&')

AddMappings(2, 0, 'BackSpace', 'Delete') ;; ??
AddMappings(2, 0, 'Capslock', ';') ; wide: ';' moved here from right side pinky


;;;
#include ../common/extend/extendSpaceWide2.ahk

DisplayHelpImage()
return

;------

; other hotkey defs

; #include ../common/extend/extendSpace.ahk
#include ../common/commonHotkeys.ahk
