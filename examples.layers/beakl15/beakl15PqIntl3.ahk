/* BEAKL15 mod PQ (based on latest BEAKL15)

2019-02-10

http://shenafu.com/code/keyboard/beakl/index.php
http://shenafu.com/smf/index.php?topic=89.msg2221#msg2221

(US ansi kbd !)
swapped: ,/ then swap /g
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

#include ../common/groups.ahk
#include ../common/clipboardToBash.ahk
#include ../common/fromPkl/pkl_guiLayers.ahk
#include ../common/layers.ahk
 
; -- main layer --
CreateLayer(1)

; shifted chars (declare 1st!)
AddMappings(1, 1, '       q w e r t  y u i o p    ',  ' Q H O U X  ? C R F Z   ')
AddMappings(1, 1, "       a s d f g  h j k l `; ' ",  ' Y I E A @  D S T N B _ ') 
AddMappings(1, 1, ' @LShift z x c v  n m , . /    ',  ' J ! G K ^  W M L P V   ')
;AddMappings(1, 1, '       z x c v b  n m , . /    ',  ' J ! G K ^  W M L P V  ')


;AddMappings(1, 0, '       1 2 3 4 5  6 7 8 9 0    ',  ' 4 0 1 2 3  7 6 5 9 8   ')
AddMappings(1, 0, '       q w e r t  y u i o p    ',  " q h o u x   / c r f z   ")
AddMappings(1, 0, "       a s d f g  h j k l `; ' ",  " y i e a .   d s t n b `` ")
AddMappings(1, 0, ' @LShift z x c v  n m , . /    ',  " j , g k '   w m l p v   ")
;AddMappings(1, 0, '       z x c v b  n m , . /   ',  " j , g k '   w m l p v   ")

; nb: screws up in Windows virtual machine under Linux !
AddMappings(1, 0, 'Capslock', ';')

; add BackSpace on [
AddMappings(1, 0, '[','BackSpace')


; -- punctuation layer --

#include ../common/puncLayer.ahk

; layerAccessKey := "RAlt"
; blockAccessKey := 1
layerAccessKey := "Space"
blockAccessKey := 0
layerNo := 3
wideRightPunc := 0  ; when true, punc layer right hand is shifted to the right for easier access to alt key
CreatePuncLayer(layerNo, layerAccessKey, blockAccessKey, wideRightPunc) 


; -- numpad layer --

numpadLayer := 2
CreateLayer(numpadLayer, 'b', 1) 

AddMappings(numpadLayer, 0, '   2 3 4   7 8 9 ',   '  + = *      ^ `% ~ ')
AddMappings(numpadLayer, 0, ' q w e r t ',   ' Tab 5 2 3 : ')
AddMappings(numpadLayer, 0, " a s d f g ",   ' 7   . 1 0 4 ')
AddMappings(numpadLayer, 0, ' z x c v b ',   ' /   6 9 8 , ')
AddMappings(numpadLayer, 0, 'Capslock', '-')


; -- extend/edit layer --

#include ../common/extend/extend2Base.ahk

; use physical left shift / ctrl keys with left Alt !
SetupExtend2('LAlt')

; SetupExtend2('Space')
; extHKitself('', 'Space')

;; ---------

DisplayHelpImage()

; creates a file for this layout in Linux XKB format 
; output layer 1 to file ahkXkbOut.txt
;#include ../common/dumpXkb.ahk
;DumpXkb("BEAKL15PqIntl3", 1)

return

; ---- hotkeys ----

; activate numpad in locked mode
; press numpad layeAccess key to toggle back off
]::CurrentLayer := Layers[numpadLayer]

; other hotkeys
#include ../common/commonHotkeys.ahk

