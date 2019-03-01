/*

2018-04-29
v5

2019-02-05
adj for non-wide and no 2nd layer (move xjqz to normal layer)
possible "wid mode" right hand for punc layer

"intl", use with "deadKeys.klc" to enter accented chars (ie french, works pretty well!)
  `' on main, ^" on shift main
*/

; code only includes

; Global variables for pkl_guiLayers.ahk / layout image
; MUST be declared *before* scripts that use them

wideRightPunc := 0    ; when true, punc layer right hand is shifted to the right for easier access to alt key
if (wideRightPunc)
    subdir := "\imgs\v5flatIntl\widRightPunc"
else
    subdir := "\imgs\v5flatIntl"

global ImgsDir := A_ScriptDir . subdir

global ImgWidth := 150
global ImgHeight := 50
global CenterOnCurrWndMonitor := 1

#include ../../common/layers.ahk
#include ../../common/groups.ahk
#include ../../common/clipboardToBash.ahk
#include ../../common/fromPkl/pkl_guiLayers.ahk

qwertyMask := "
(Join`r`n
       q w e r t  y u i o p
       a s d f g  h j k l ; '
 @LShift z x c v  n m , . /
)"


; ----

layer1 := "
(Join`r`n
    q p o u "  z n d f v
    g i a e x  l r t s c ``
    k , . y '  j h w m b
)"

layer1sh := "
(Join`r`n
    Q P O U "  Z N D F V
    G I A E X  L R T S C ^
    K ? ! Y /  J H W M B
)"


; main layer
CreateLayer(1)

;# test

toto := "
(Join`r`n
 a s d  u i o
)"

; AddMappingsOne(1, 0, toto)
; exitapp

AddMappings(1, 1, qwertyMask, layer1sh)
AddMappings(1, 0, qwertyMask, layer1)
AddMappings(1, 0, 'Capslock', ';')
AddMappings(1, 0, '[','BackSpace')

; punc layer

#include ../../common/puncLayer.ahk

layerAccessKey := "Space"
; layerAccessKey := "RAlt"
blockAccessKey := 0
layerNo := 3
CreatePuncLayer(layerNo, layerAccessKey, blockAccessKey, wideRightPunc)


; -- numpad layer --

numpadLayer := 2
CreateLayer(numpadLayer, 'b', 1) 

numRef := "
(Join`r`n
  u i o p
  h j k l ;
  n m , . /
)"
numpad := "
(Join`r`n
  5 2 3 :
  7 . 1 0 4
  / 6 9 8 ,
)"

AddMappings(numpadLayer, 0, '   2 3 4   7 8 9 ',   '  + = *      ^ `% ~ ')
AddMappings(numpadLayer, 0, ' q w e r t ',   ' Tab 5 2 3 : ')
AddMappings(numpadLayer, 0, " a s d f g ",   ' 7   . 1 0 4 ')
AddMappings(numpadLayer, 0, ' z x c v b ',   ' /   6 9 8 , ')
AddMappings(numpadLayer, 0, 'Capslock', '-')


; ---------------

#include ../../common/extend/extend2Base.ahk

; use physical left shift / ctrl keys with left Alt !
SetupExtend2('LAlt')


DisplayHelpImage()
return

; ---- hotkeys ----

; activate numpad in locked mode
; press numpad layeAccess key to toggle back off
]::CurrentLayer := Layers[numpadLayer]

; other hotkey defs

#include ../../common/commonHotkeys.ahk
