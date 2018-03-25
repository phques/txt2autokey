/* BEAKL9
http://shenafu.com/code/keyboard/beakl/index.php
http://shenafu.com/smf/index.php?topic=89.900

This is for use w. the microsoft KLC generated keyboard
##!! this does not really work ..
##!! AltGr actually generates lctrl-ralt
##!! - so we cannot detect the layer change (even with ralt as hotkey)
##!! - and dual mode shift does not work either

PQ mods:
- /? on left shift as dual mode
- capslock on b

*/

#InstallKeybdHook

; -- layers --

#include ../common/layers.ahk
 
; main layer
CreateLayer(1)

; shifted chars (declare 1st!)
; bottom row shifted left (angle mod)
AddMappings(1, 1, '@LShift', '?')
AddMappings(1, 1, 'Capslock', '-')

AddMappings(1, 0, '@LShift', '/')
AddMappings(1, 0, 'Capslock', '-')
AddMappings(1, 0, 'b', 'Capslock')


; -- layer 2 --

CreateLayer(2, "RAlt", 0)

; -- punctuation layer  --
; bottom row shifted left (angle mod)
; orig BEAKL9
; AddMappings(2, 0, '@LShift', '5')
; AddMappings(2, 0, 'Capslock', '-')

; pq 2018-03
AddMappings(2, 0, '@LShift', '5')
AddMappings(2, 0, 'Capslock', '#')

;------

; code only includes

; Global variables for pkl_guiLayers.ahk / layout image
; MUST be declared *before* scripts that use them
global ImgsDir := A_ScriptDir . "\imgs\beakl9"
global ImgWidth := 240
global ImgHeight := 74
global CenterOnCurrWndMonitor := 1

#include ../common/groups.ahk
#include ../common/clipboardToBash.ahk
#include ../common/fromPkl/pkl_guiLayers.ahk

DisplayHelpImage()
return

;------

; other hotkey defs

#include ../common/extend/extendSpace.ahk
#include ../common/commonHotkeys.ahk

