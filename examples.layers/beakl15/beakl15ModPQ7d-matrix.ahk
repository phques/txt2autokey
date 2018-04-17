/* BEAKL15
http://shenafu.com/code/keyboard/beakl/index.php
http://shenafu.com/smf/index.php?topic=89.msg2221#msg2221

BEAKL15 on SmartYao LY092-SN w. qwertyRefSwap (ie wqerty ref w. enter <=> shift swapped)

see beakl15ModPQ.txt 
also add capsLock on `

*/

; code only includes

; Global variables for pkl_guiLayers.ahk / layout image
; MUST be declared *before* scripts that use them
global ImgsDir := A_ScriptDir . "\imgs\modPQ7d"
global ImgWidth := 200
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
AddMappings(1, 1, ' q w e r    u i o p    ',  ' Q H O U    C R F Z    ')
AddMappings(1, 1, " a s d f  h j k l `; ' ",  ' Y I E A  M S T N B `; ') 
AddMappings(1, 1, ' z x c v    m , . /    ',  ' J ! ? K    D L P V    ')

; Leave 'Capslock' on Shift CapsLock !
; AddMappings(1, 1, 'CapsLock', '-') 


AddMappings(1, 0, ' 1 2 3 4 5  6 7 8 9 0    ',  ' 4 0 1 2 3  7 6 5 9 8    ')
AddMappings(1, 0, ' q w e r      u i o p    ',  ' q h o u      c r f z    ')
AddMappings(1, 0, " a s d f    h j k l `; ' ",  ' y i e a    m s t n b `; ')
AddMappings(1, 0, ' z x c v      m , . /    ',  " j , / k      d l p v    ")

AddMappings(1, 0, 'CapsLock', '-') 

; capslock on `
AddMappings(1, 0, '``', 'CapsLock')


; -- layer 2 --

; since SmartYao LY092-SN doesnt output RAlt,
; we use num5 as AltGr key (physically placed under thumb)
CreateLayer(2, "Numpad5", 1)


; -- numpad layer (Shifted layer2) --
; shifted chars (1st)
; ## Chnages above interferes w. numpad 9, used by 'X'
; AddMappings(2, 1, '   2 3 4   7 8 9 ',   '  + = *      ^ `% ~ ')
; AddMappings(2, 1, ' q w e r t ',   ' Tab 7 2 4 6 ')
; AddMappings(2, 1, " a s d f g ",   ' 8   0 1 3 5 ')
; AddMappings(2, 1, ' z x c v b ',   ' /   , 9 . : ')
; AddMappings(2, 1, '-', '-')

; a few chars on altGr layer, uppercase here
AddMappings(2, 1, '     j  ',  '    G ')
AddMappings(2, 1, ' c   m  ',  ' X  W ')

AddMappings(2, 1, 'CapsLock', '-') 

; -- punctuation layer --

AddMappings(2, 0, '   2 3          8 9      ', '   % _              ^ ~     ')
AddMappings(2, 0, ' q w e r t    u i o p    ', ' : < " > ``       [ = ] @   ')
AddMappings(2, 0, " a s d f g  h j k l `; ' ", ' \ ( . ) #      $ g { } | `;')
AddMappings(2, 0, ' z x c v b    m   . /    ', " * - x ' !        w   + &   ")

AddMappings(2, 0, 'BackSpace', 'Delete') ;; ??
AddMappings(2, 0, 'CapsLock', '-') 

;------

#include ../common/extend/extendSpace2.ahk

DisplayHelpImage()
return

;------

; other hotkey defs

; #include ../common/extend/extendSpace.ahk
#include ../common/commonHotkeys.ahk

