/* BEAKL15b mod PQ (based on latest BEAKL15)

2019-01-30

http://shenafu.com/code/keyboard/beakl/index.php
http://shenafu.com/smf/index.php?topic=89.msg2221#msg2221

(US ansi kbd !)
This version is used with beakl15bmodPQ.klc, most of the keys remapping is done with a Windows layout
This file adds the few extras that cannot be handled in KLC

- J on left shift key
- capslock => ` (dead key, for french)
- shift capslock => CapsLock 
( - altGr capslock => -  ... does NOT work)
- help image
- extend layer, etc

The combination of autohotkey and a windows layout causes some side effects
 - if ahk converts CapsLock to '`', the windows layout sees '`' (?) and correctly handles it as a deadkey in the layout
but
 - extend layer needs to be redone to match the new keys positions!
 - having the punc layer on the windows layout means alt-gr is not accessible in ahk 
   - so cannot set altgr-CapsLock = '-'
   - and ahk will not see the change to punc layer
*/

; -- layers --

; code only includes

; Global variables for pkl_guiLayers.ahk / layout image
; MUST be declared *before* scripts that use them
global ImgsDir := A_ScriptDir . "\imgs\beakl15modPQ\small"
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

; shift capslock = CapsLock !
;AddMappings(1, 1, 'Capslock', '-')
AddMappings(1, 1, ' @LShift',  'J')
AddMappings(1, 0, ' @LShift',  'j')

AddMappings(1, 0, 'Capslock', '``')


; -- punctuation layer (RAlt) --

CreateLayer(2)
AddMappings(2, 0, 'Capslock', '-')

;------

#include ../common/extend/extendSpace2.ahk

DisplayHelpImage()
return

;------

; other hotkey defs

#include ../common/commonHotkeys.ahk

