/*
Found @ http://shenafu.com/code/keyboard/Keyboard%20Layout%20Analyzer%202.html#/config
ref http://shenafu.com/smf/index.php?topic=89.0

 PQ not going 'all the way', ie moving Enter, Alt, Shift
  so missing []{}  move Caps top row on =
  and []{} on ]\
  Also did angleZ 
*/

; -- layers --

#include ../common/layers.ahk
#include ../common/qwertyMasks.ahk
#include ../mtgap-curl33Layers/mtgap-curl33symLayerv1.0.ahk
 
layer1Sh := ""
 . ' J Y O `; |  W D M N _ Z '
 . ' H I E A U  G S T R P V '
 . ' \ < / > ?  F C L B K '

 
layer1 := ""
 . " j y o . '  w d m n - z "
 . ' h i e a u  g s t r p v '
 . ' " ( , ) :  f c l b k '
 

; main layer
CreateLayer(1)

; shifted chars 1st !
AddMappings(1, 1, qwertyMask32, layer1Sh)
AddMappings(1, 0, qwertyMask32, layer1)

AddMappings(1, 0, '=', 'Capslock')
AddMappings(1, 1, "`` 1 2 3 4 5 6 7 8 9 0 -", "tab ~ `% & ! `` * @ # $ ^ +")
AddMappings(1, 0, "`` 1 2 3 4 5 6 7 8 9 0 -", "tab 3 1 0 2 4  8 6 5 7 9 =")
; so shift-mappedTab works
MarkMappingAsShifted(1, "``", 'tab')

AddMappings(1, 0, 'Tab Capslock', 'q x')
AddMappings(1, 1, 'Tab Capslock', 'Q X')

AddMappings(1, 0, '] \', '{ }')
AddMappings(1, 1, '] \', '[ ]')

; symbols layer
; both LAlt and RAlt are access keys of layer2
CreateSymbolsLayer(2, "LAlt", 0)
CreateLayerAccessHotkey(2, "RAlt")

; trying to get back AltTab .. not working
; use ctrl-alt-tab .. works and is nicer!
AddMappings(2, 0, 'sc029', 'AltTab')


;------

; code only includes

; Global variables for pkl_guiLayers.ahk / layout image
; MUST be declared *before* scripts that use them
global ImgsDir := A_ScriptDir . "\imgs\pqanglez"
global ImgWidth := 250
global ImgHeight := 66
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

; we need to map alt-tab to ... AltTab ! 
; (this refers to the key that has been remapped as Tab, not the physical tab key)
;(but cant access layer2 with alt if we do this)
;Alt & Tab::AltTab

