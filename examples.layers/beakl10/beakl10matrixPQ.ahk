/* 
BEAKL10  layout
ahk script for SmartYao LY092-SN w. main layer on the kbd

+ the script handles :
  - adjustments on the shifted layer
  - 'alt-gr' punc layer 
  - numpad layer
  
http://shenafu.com/code/keyboard/beakl/index.php
http://shenafu.com/smf/index.php?topic=89.900

*/

; code only includes

; Global variables for pkl_guiLayers.ahk / layout image
; MUST be declared *before* scripts that use them
global ImgsDir := A_ScriptDir . "\imgs\beakl10pq"
global ImgWidth := 240
global ImgHeight := 74
global CenterOnCurrWndMonitor := 1

#include ../common/groups.ahk
#include ../common/clipboardToBash.ahk
#include ../common/fromPkl/pkl_guiLayers.ahk
#include ../common/layers.ahk
 
; -- layers --

; main layer
CreateLayer(1)

; adjust some shifted chars (declare 1st!)
AddMappings(1, 1, ' 0 1 2  6 5 9 ', ' + = *  ^ `% ~ ')
AddMappings(1, 1, " . ' , ", ' @ `` ! ')


; -- layer 2 --

; CreateLayer(2, "RAlt", 0)
CreateLayer(2, "Numpad5", 1)

; -- numpad layer (Shift RAlt) --
; shifted chars (1st)
AddMappings(2, 1, '   0 1 2    6 5 9 ',  ' + = *    ^ `% ~ ')

AddMappings(2, 1, ' q h o u x ',   'Tab 7 2 4 6 ')
AddMappings(2, 1, ' y i e a . ',   '8   0 1 3 5 ')
AddMappings(2, 1, " j / ' , z ",   '/   , 9 . : ')

; -- punctuation layer (RAlt) --
AddMappings(2, 0, '   0 1 2      6 5 9     ',  '   + = *      ^ `% ~     ')
AddMappings(2, 0, '   h o u x    d n m     ',  '   { _ } &    [ " ]      ')
AddMappings(2, 0, ' y i e a .  c s r t w `;',  ' \ ( 1 ) #  $ < 0 > | `; ')
AddMappings(2, 0, " j / ' , z    p l f k   ",  ' 5 4 3 2 :    9 8 7 6    ')
AddMappings(2, 0, " Backspace ",  ' Del  ')

;;;

DisplayHelpImage()
return

;------

; other hotkey defs

#include ../common/extend/extendSpace.ahk
#include ../common/commonHotkeys.ahk
