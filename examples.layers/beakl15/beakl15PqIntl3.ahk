/* BEAKL15 mod PQ (based on latest BEAKL15)

2019-02-10

http://shenafu.com/code/keyboard/beakl/index.php
http://shenafu.com/smf/index.php?topic=89.msg2221#msg2221

(US ansi kbd !)

"intl", use with "deadKeys.klc" to enter accented chars (ie french, works pretty well!)

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

wideRightPunc := 0  ; when true, punc layer right hand is shifted to the right for easier access to alt key

#include ../common/groups.ahk
#include ../common/clipboardToBash.ahk
#include ../common/fromPkl/pkl_guiLayers.ahk
#include ../common/layers.ahk
 
; main layer
CreateLayer(1)

; shifted chars (declare 1st!)
AddMappings(1, 1, '       q w e r t  y u i o p    ',  ' Q H O U X  W C R F Z   ')
AddMappings(1, 1, "       a s d f g  h j k l `; ' ",  ' Y I E A @  D S T N B _ ') 
AddMappings(1, 1, ' @LShift z x c v  n m , . /    ',  ' J ! ? K ^  G M L P V   ')
;AddMappings(1, 1, '       z x c v b  n m , . /    ',  ' J ! ? K ^  G M L P V  ')

; shift capslock = CapsLock !
;AddMappings(1, 1, 'Capslock', '-')


;AddMappings(1, 0, '       1 2 3 4 5  6 7 8 9 0    ',  ' 4 0 1 2 3  7 6 5 9 8   ')
AddMappings(1, 0, '       q w e r t  y u i o p    ',  ' q h o u x   w c r f z   ')
AddMappings(1, 0, "       a s d f g  h j k l `; ' ",  " y i e a .   d s t n b `` ")
AddMappings(1, 0, ' @LShift z x c v  n m , . /    ',  " j , / k '   g m l p v   ")
;AddMappings(1, 0, '       z x c v b  n m , . /    ',  " j , / k '   g m l p v   ")

; deadkey for accented chars
AddMappings(1, 0, 'Capslock', ';')


; -- layer 2 --

CreateLayer(2, "RAlt", 1)

; -- numpad layer (Shift RAlt) --
; (no left shift applied here)
;AddMappings(2, 1, '   2 3 4   7 8 9 ',   '  + = *      ^ `% ~ ')
;AddMappings(2, 1, ' q w e r t ',   ' Tab 5 2 3 : ')
;AddMappings(2, 1, " a s d f g ",   ' 7   . 1 0 4 ')
;AddMappings(2, 1, ' z x c v b ',   ' /   6 9 8 , ')

;AddMappings(2, 1, 'Capslock', '-')

; -- punctuation layer (RAlt) --

; punc layer

#include ../common/puncLayer.ahk

layerAccessKey := "RAlt"
blockAccessKey := 1
layerNo := 3
CreatePuncLayer(layerNo, layerAccessKey, blockAccessKey, wideRightPunc) 


;------

#include ../common/extend/extendSpace2.ahk

DisplayHelpImage()
return

;------

; other hotkey defs

#include ../common/commonHotkeys.ahk

