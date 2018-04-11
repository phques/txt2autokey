/*

2018-04-10

place manually on shift altGr
>{}[]+

which leaves (12 !) 
_$\|&<%@#^`~


*/

; code only includes

; Global variables for pkl_guiLayers.ahk / layout image
; MUST be declared *before* scripts that use them
global ImgsDir := A_ScriptDir . "\imgs"
global ImgWidth := 170
global ImgHeight := 98
global CenterOnCurrWndMonitor := 1

#include ../../common/layers.ahk
#include ../../common/groups.ahk
#include ../../common/clipboardToBash.ahk
#include ../../common/fromPkl/pkl_guiLayers.ahk


qwertyMask18 := "
(Join`r`n
          w e r      i o p
        a s d f g  j k l ; '
  @LShift    c       ,     @RShift
)"


; ----

;SetNoKeyChar('~')

layer1 := "
(Join`r`n
    n l d       i e h   
  f r s t c   u a o p g 
  w     m       y     b 
)"

layer1sh := "
(Join`r`n
    N L D       I E H   
  F R S T C   U A O P G 
  W     M       Y     B 
)"

layer2 := "
(Join`r`n
    . , -       j v k   
  ( ? ! ' :   ) " z x / 
  =     ;       q     * 
)"

layer2sh := "
(Join`r`n
    { } \       J V K   
  < | & > #   % + Z X @ 
  ^     [       ]     _ 
)"

 

; main layer
CreateLayer(1)

; 2nd layer, 
; CreateLayer(2, "RAlt", 1)
CreateLayer(2, "Space", 0)

AddMappings(1, 1, qwertyMask18, layer1sh)
AddMappings(2, 1, qwertyMask18, layer2sh)
AddMappings(1, 0, qwertyMask18, layer1)
AddMappings(2, 0, qwertyMask18, layer2)
SetNoKeyChar('')
AddMappings(2, 0, '2 3', '~ $')

AddMappings(1, 0, '1 2 3 4 5  7 8 9 0 -', '4 0 1 2 3   7 6 5 9 8')

; ---------------

#include ../../common/extend/extendWide2BaseShLeft.ahk

SetupExtend2('LAlt')
; SetupExtend2('Space')

; this one will autorepeat Space, since space itself will not (dual mode cant)
; extHK('b', 'Space') 

; space press/release outputs space (dual mode)
; extHKitself('', 'Space')

DisplayHelpImage()
return

;------

; other hotkey defs

; #include ../../common/capsLock.ahk
; #include ../../common/extend/extendLAlt.ahk
#include ../../common/commonHotkeys.ahk

;#include extraKeyDefs.ahk

