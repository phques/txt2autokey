/* BEAKL15 mod PQ (based on latest BEAKL15)

2019-02-03

http://shenafu.com/code/keyboard/beakl/index.php
http://shenafu.com/smf/index.php?topic=89.msg2221#msg2221

(US ansi kbd !)
- dont remap digits on top row
- shift capslock => CapsLock 
- added a _ above ; on shift layer
- left bottom row shifted left to ShiftKey, with swapped / ,
- adjusted symbols layer 

"intl", use with "deadKeys.klc" to enter accented chars (ie french, works pretty well!)
 - capsLock = ` deadkey (vs -)
 - added " deadkey on punc layer, for chars like ä, ï etc

*/

; -- layers --

; code only includes

; Global variables for pkl_guiLayers.ahk / layout image
; MUST be declared *before* scripts that use them
global ImgsDir := A_ScriptDir . "\imgs\beakl15modPQ\smallIntl"
global ImgWidth := 174
global ImgHeight := 50
;global ImgsDir := A_ScriptDir . "\imgs\beakl15modPQ"
;global ImgWidth := 224
;global ImgHeight := 56

global CenterOnCurrWndMonitor := 1

#include ../common/groups.ahk
#include ../common/clipboardToBash.ahk
#include ../common/fromPkl/pkl_guiLayers.ahk
#include ../common/layers.ahk
 
; main layer
CreateLayer(1)

leftShift := 1

; shifted chars (declare 1st!)
    AddMappings(1, 1, '       q w e r t  y u i o p    ',  ' Q H O U X  G C R F Z   ')
    AddMappings(1, 1, "       a s d f g  h j k l `; ' ",  ' Y I E A @  D S T N B _ ') 
if (leftShift) {
    AddMappings(1, 1, ' @LShift z x c v  n m , . /    ',  ' J ! ? K `` W M L P V   ')
} else {
    AddMappings(1, 1, '       z x c v b  n m , . /    ',  ' J  ! ? K `` W M L P V  ')
}

; shift capslock = CapsLock !
;AddMappings(1, 1, 'Capslock', '-')


;   AddMappings(1, 0, '       1 2 3 4 5  6 7 8 9 0    ',  ' 4 0 1 2 3  7 6 5 9 8    ')
    AddMappings(1, 0, '       q w e r t  y u i o p    ',  ' q h o u x  g c r f z    ')
    AddMappings(1, 0, "       a s d f g  h j k l `; ' ",  ' y i e a .  d s t n b `; ')
if (leftShift) {
    AddMappings(1, 0, ' @LShift z x c v  n m , . /    ',  " j , / k '  w m l p v    ")
} else {
    AddMappings(1, 0, '       z x c v b  n m , . /    ',  " j , / k '  w m l p v    ")
}

; deadkey for accented chars
AddMappings(1, 0, 'Capslock', '``')


; -- layer 2 --

CreateLayer(2, "RAlt", 1)

; -- numpad layer (Shift RAlt) --
; (no left shift applied here)
AddMappings(2, 1, '   2 3 4   7 8 9 ',   '  + = *      ^ `% ~ ')
AddMappings(2, 1, ' q w e r t ',   ' Tab 5 2 3 : ')
AddMappings(2, 1, " a s d f g ",   ' 7   . 1 0 4 ')
AddMappings(2, 1, ' z x c v b ',   ' /   6 9 8 , ')

AddMappings(2, 1, 'Capslock', '-')

; -- punctuation layer (RAlt) --

; original:
;    <$>   [_]
; - \(")# %{=}| ;
;    :*+   &^~

; nb: already using zxc vs xcv, so no need for shiftLeft version
; " is deadkey for accented chars
AddMappings(2, 0, '   w e r      i o p    ',   '   < $ >      [ ] _   ')
AddMappings(2, 0, " a s d f g  j k l `; ' ",   ' \ ( " ) #  { = } ! | ')
AddMappings(2, 0, '  z x c v   m , . /    ',   '   : * + "  & ^ ~ %   ')

AddMappings(2, 0, 'Capslock', '-')

;------

#include ../common/extend/extendSpace2.ahk

DisplayHelpImage()
return

;------

; other hotkey defs

#include ../common/commonHotkeys.ahk

