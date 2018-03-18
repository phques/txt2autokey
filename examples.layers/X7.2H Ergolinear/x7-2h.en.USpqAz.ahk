/* 
 X7.2H Ergolinear (Ian Douglas)

 http://www.keyboard-design.com/
 see also http://shenafu.com/smf/index.php?topic=89.0

PQ 2018-03-17
Adapted for US kbd w. my AHK layers scripts and w. extend layer on space.
Leave special keys, like Shift, Ctrl Alt etc alone.

+ Swap CapsLock - Tab (;;not in this version, see comment lower)
+ Space= Space / H / h (main, shifted, altGr)
+ This version also has the Angle mod on the lower left row (w. shift) 

*/

; code only includes

; Global variables for pkl_guiLayers.ahk / layout image
; MUST be declared *before* scripts that use them
global ImgsDir := A_ScriptDir . "\imgs\x7.2h-USpq"
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
; angle mod, bottom left row starts on Shift (just repeat middle char)
AddMappings(1, 1,        ' q w e r t  y u i o p  ',   ' Q Y O U @   B M R C Z ')
AddMappings(1, 1,        " a s d f g  h j k l `; ",   ' ~ I E A J   W T N S K ') 
AddMappings(1, 1, '@LShift z x c v b  n m , . /  ',   ' | P ^ G \ \ V D L F X ')

; main
AddMappings(1, 0,        ' q w e r t  y u i o p    ',  ' q y o u _   b m r c z   ')
AddMappings(1, 0,        " a s d f g  h j k l `; ' ",  " ' i e a j   w t n s k # ")
AddMappings(1, 0, '@LShift z x c v b  n m , . /    ',  ' : p < g > > v d l f x   ')

; swap capslock / tab
; **-- PQ never mind this, does not work on Alt layer AND too much habit to fight !! --**
; AddMappings(1, 1, 'Capslock', 'Tab')
; AddMappings(1, 0, 'Capslock', 'Tab')
; MarkMappingAsShifted(1, "Capslock", 'Tab') ; so shift-mappedTab works

; AddMappings(1, 1, 'Tab', 'Capslock')
; AddMappings(1, 0, 'Tab', 'Capslock')


; -- layer 2 --

; -- punctuation layer (RAlt) --
CreateLayer(2, "RAlt", 0)

AddMappings(2, 0,        ' q w e r t  y u i o p    ',  ' [ $ ? = ]   & { } + ``   ')
AddMappings(2, 0,        " a s d f g  h j k l `; ' ",  ' " ( . , !   * `; - ) / % ')
AddMappings(2, 0, '@LShift z x c v b  n m , . /    ',  ' 8 4 0 2 6 : 9 3 1 5 7    ')

; swap capslock / tab
; AddMappings(2, 1, 'Capslock', 'AltTab')
; AddMappings(2, 0, 'Capslock', 'AltTab')
; MarkMappingAsShifted(2, "Capslock", 'AltTab') ; so shift-mappedTab works

; AddMappings(2, 1, 'Tab', 'Capslock')
; AddMappings(2, 0, 'Tab', 'Capslock')


; special case for Spacebar
; Space=> Space / H / h (main, shifted, altGr)
AddMappings(1, 1, 'Space', 'H')
AddMappings(2, 0, 'Space', 'h')
AddMappings(1, 0, 'Space', 'Space')

;;;

DisplayHelpImage()
return

;------

; other hotkey defs

#include ../common/extend/extendSpace.ahk
#include ../common/commonHotkeys.ahk
