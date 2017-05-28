/*
Found @ http://shenafu.com/code/keyboard/Keyboard%20Layout%20Analyzer%202.html#/config
ref http://shenafu.com/smf/index.php?topic=89.0
*/

; -- layers --

#include ../common/layers.ahk
#include ../common/qwertyMasks.ahk
; #include mtgap-curl33symLayerv1.0.ahk
 
layer1Sh := ""
 . ' J Y O `; |  W D M N _ Z '
 . ' H I E A U  G S T R P V '
 . ' > \ < / ?  F C L B K '

 
layer1 := ""
 . " j y o . '  w d m n - z "
 . ' h i e a u  g s t r p v '
 . ' ) " ( , :  f c l b k '
 

; main layer
CreateLayer(1)

; shifted chars 1st !
AddMappings(1, 1, qwertyMask32, layer1Sh)
AddMappings(1, 0, qwertyMask32, layer1)

AddMappings(1, 1, "1 2 3 4 5 6 7 8 9 0 -", "~ `% & ! `` * @ # $ ^ +")
AddMappings(1, 0, "`` 1 2 3 4 5 6 7 8 9 0 -", "tab 3 1 0 2 4  8 6 5 7 9 =")

AddMappings(1, 0, 'Tab Capslock', 'q x')
AddMappings(1, 1, 'Tab Capslock', 'Q X')

AddMappings(1, 0, '\', 'Capslock')
AddMappings(1, 0, 'Enter', 'Ctrl')

AddMappings(1, 0, 'LShift RShift', '[ ]')
AddMappings(1, 1, 'LShift RShift', '{ }')

AddMappings(1, 0, 'LAlt', 'Enter')
AddMappings(1, 0, 'LWin', 'Alt')
AddMappings(1, 0, 'AppsKey', 'Alt')
AddMappings(1, 0, 'RCtrl', 'RWin')
SetShiftKey(1, 'RAlt')
AddMappings(1, 0, 'RAlt', 'Shift')

; symbols layer
;CreateSymbolsLayer(2, "Space", 0)

;------

; code only includes

; Global variables for pkl_guiLayers.ahk / layout image
; MUST be declared *before* scripts that use them
global ImgsDir := "%A_ScriptDir%\imgs\v1.3"
global ImgWidth := 248
global ImgHeight := 46
global CenterOnCurrWndMonitor := 1

#include ../common/groups.ahk
#include ../common/clipboardToBash.ahk
#include ../common/fromPkl/pkl_guiLayers.ahk

DisplayHelpImage()
return

;------

; other hotkey defs

;#include ../common/capsLock.ahk
#include ../common/extend/extendSpace.ahk
#include ../common/commonHotkeys.ahk

;#include extraKeyDefs.ahk

