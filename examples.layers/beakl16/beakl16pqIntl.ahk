/* BEAKL16
as seen on http://shenafu.com/code/keyboard/klatest/
(http://shenafu.com/code/keyboard/beakl/index.php)

2019-02-08
- dont remap digits on top row
- shift capslock => CapsLock 
- added a _ above ; on shift layer
- left bottom row shifted left to ShiftKey
- adjusted symbols layer 

"intl", use with "deadKeys.klc" to enter accented chars (ie french, works pretty well!)
 - capsLock = ; deadkey (vs -) (swapped with ` on shift main!)
 - added " deadkey on punc layer, for chars like ä, ï etc

*/

; -- layers --

; code only includes

; Global variables for pkl_guiLayers.ahk / layout image
; MUST be declared *before* scripts that use them
global ImgsDir := A_ScriptDir . "\imgs"
global ImgWidth := 240
global ImgHeight := 74
global CenterOnCurrWndMonitor := 1

#include ../common/groups.ahk
#include ../common/clipboardToBash.ahk
#include ../common/fromPkl/pkl_guiLayers.ahk
#include ../common/layers.ahk
 
; -- main layer --
CreateLayer(1)

; shifted chars (declare 1st!)
AddMappings(1, 1, '       q w e r t  y u i o p    ',  ' Q @ O U J  W C S H V   ')
AddMappings(1, 1, "       a s d f g  h j k l `; ' ",  ' X A I E Y  D T R N P _ ') 
AddMappings(1, 1, ' @LShift z x c v  n m , . /    ',  ' Z - ? ! K  G M L F B   ')

;AddMappings(1, 1, '      z x c v b  n m , . /    ',  ' Z `` ? ! K  G M L F B   ')

; shift capslock = CapsLock !
;AddMappings(1, 1, 'Capslock', '-')


;AddMappings(1, 0, ' 1 2 3 4 5  6 7 8 9 0    ',  ' 4 0 1 2 3  7 6 5 9 8    ')
AddMappings(1, 0, '       q w e r t  y u i o p    ',  ' q . o u j  w c s h v    ')
AddMappings(1, 0, "       a s d f g  h j k l `; ' ",  ' x a i e y  d t r n p `` ')
AddMappings(1, 0, ' @LShift z x c v  n m , . /    ',  " z ' / , k  g m l f b    ")

;AddMappings(1, 0, '      z x c v b  n m , . /    ',  " z ' / , k  g m l f b    ")

; deadkey for accented chars
AddMappings(1, 0, 'Capslock', ';')


; -- layer 2 --

CreateLayer(2, "RAlt", 1)

; -- numpad layer (Shift RAlt) --
; shifted chars (1st) (copied from BEAKL15)
; NOT WORKING with current layers.ahk
;AddMappings(2, 1, '   2 3 4   7 8 9 ',   '  + = *      ^ `% ~ ')
;AddMappings(2, 1, ' q w e r t ',   ' Tab 5 2 3 : ')
;AddMappings(2, 1, " a s d f g ",   ' 7   . 1 0 4 ')
;AddMappings(2, 1, ' z x c v b ',   ' /   6 9 8 , ')

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

; #include ../common/extend/extendSpace.ahk
#include ../common/commonHotkeys.ahk

