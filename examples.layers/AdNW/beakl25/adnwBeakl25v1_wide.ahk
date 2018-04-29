/*

2018-04-29
v1

*/

; code only includes

; Global variables for pkl_guiLayers.ahk / layout image
; MUST be declared *before* scripts that use them
global ImgsDir := A_ScriptDir . "\imgs\v1"
global ImgWidth := 110
global ImgHeight := 110
global CenterOnCurrWndMonitor := 1

#include ../../common/layers.ahk
#include ../../common/groups.ahk
#include ../../common/clipboardToBash.ahk
#include ../../common/fromPkl/pkl_guiLayers.ahk

; Qwerty mask
qwertyMask := "
(Join`r`n
        q w e r    i o p [
        a s d f  j k l ; ' 
  @LShift z x c    , . / @RShift
)"


; ----

layer1 := "
(Join`r`n
  _ p o u       m c r z 
  b h a e     g t s n w 
  k y . i       d f l v 
)"

layer2 := "
(Join`r`n
  \ { j /       ( : ! } 
  + , q "     ) - ' x [ 
  ] | = $       ; * ? > 
)"

layer1sh := "
(Join`r`n
  _ P O U       M C R Z 
  B H A E     G T S N W 
  K Y . I       D F L V 
)"

layer2sh := "
(Join`r`n
  \ { J /       ( : ! } 
  + , Q "     ) - ' X [ 
  ] | = $       ; * ? > 
)"

 

; main layer
CreateLayer(1)

; 2nd layer, 
; CreateLayer(2, "RAlt", 1)
CreateLayer(2, "Space", 0)

AddMappings(1, 1, qwertyMask, layer1sh)
AddMappings(2, 1, qwertyMask, layer2sh)
AddMappings(1, 0, qwertyMask, layer1)
AddMappings(2, 0, qwertyMask, layer2)

AddMappings(1, 0, '1 2 3 4 5  7 8 9 0 -', '4 0 1 2 3   7 6 5 9 8')

; ---------------

#include ../../common/extend/extendWide2BaseShLeft.ahk

SetupExtend2('LAlt')

; SetupExtend2('Space')
; extHK('b', 'Space') 
; extHKitself('', 'Space')

DisplayHelpImage()
return

;------

; other hotkey defs

#include ../../common/commonHotkeys.ahk

