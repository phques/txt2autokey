/* BEAKL15 mod PQ (based on latest BEAKL15)

2019-02-08

http://shenafu.com/code/keyboard/beakl/index.php
http://shenafu.com/smf/index.php?topic=89.msg2221#msg2221

(US ansi kbd !)
- ** swapped GW !!
  -- seems to give same results on klatest KLA as std beakl (!?)
  (see BEAKL16, it also has G-W swap)
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
    AddMappings(1, 1, '       q w e r t  y u i o p    ',  ' Q H O U X  W C R F Z   ')
    AddMappings(1, 1, "       a s d f g  h j k l `; ' ",  ' Y I E A @  D S T N B _ ') 
if (leftShift) {
    AddMappings(1, 1, ' @LShift z x c v  n m , . /    ',  ' J ! ? K `` G M L P V   ')
} else {
    AddMappings(1, 1, '       z x c v b  n m , . /    ',  ' J  ! ? K `` G M L P V  ')
}

; shift capslock = CapsLock !
;AddMappings(1, 1, 'Capslock', '-')


;   AddMappings(1, 0, '       1 2 3 4 5  6 7 8 9 0    ',  ' 4 0 1 2 3  7 6 5 9 8    ')
    AddMappings(1, 0, '       q w e r t  y u i o p  [ ',  ' q h o u x  w c r f z `` ')
    AddMappings(1, 0, "       a s d f g  h j k l `; ' ",  ' y i e a .  d s t n b Backspace ')
if (leftShift) {
    AddMappings(1, 0, ' @LShift z x c v  n m , . /    ',  " j , / k '  g m l p v    ")
} else {
    AddMappings(1, 0, '       z x c v b  n m , . /    ',  " j , / k '  g m l p v    ")
}

; deadkey for accented chars
AddMappings(1, 0, 'Capslock', ';')


; -- layer 2 --

; CreateLayer(2, "RAlt", 1)

; -- numpad layer (Shift RAlt) --
; (no left shift applied here)
; AddMappings(2, 1, '   2 3 4   7 8 9 ',   '  + = *      ^ `% ~ ')
; AddMappings(2, 1, ' q w e r t ',   ' Tab 5 2 3 : ')
; AddMappings(2, 1, " a s d f g ",   ' 7   . 1 0 4 ')
; AddMappings(2, 1, ' z x c v b ',   ' /   6 9 8 , ')

; AddMappings(2, 1, 'Capslock', '-')

; -- punctuation layer (RAlt) --

#include ../common/puncLayer.ahk

layerAccessKey := "space"
; layerAccessKey := "RAlt"
blockAccessKey := 0
layerNo := 3
wideRightPunc := 0  ; when true, punc layer right hand is shifted to the right for easier access to alt key
CreatePuncLayer(layerNo, layerAccessKey, blockAccessKey, wideRightPunc) 

; AddMappings(2, 0, 'Capslock', '-')

;------

#include ../common/extend/extend2Base.ahk
SetupExtend2("LAlt")

; lets try this: W on extend layer !
; on same spot as G (qwerty N)
extHK('n', 'w')

DisplayHelpImage()
return

;------

; other hotkey defs

#include ../common/commonHotkeys.ahk

