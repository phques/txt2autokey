/*
version for use on SmartYao LY092-SN kbd w. 'qwerty ref base'

2018-04-08
30v1.0

*/

; code only includes

; Global variables for pkl_guiLayers.ahk / layout image
; MUST be declared *before* scripts that use them
global ImgsDir := A_ScriptDir . "\imgs\v1.0"
global ImgWidth := 170
global ImgHeight := 50
global CenterOnCurrWndMonitor := 1

#include ../common/layers.ahk
#include ../common/groups.ahk
#include ../common/clipboardToBash.ahk
#include ../common/fromPkl/pkl_guiLayers.ahk
#include ../common/qwertyMasks.ahk

; ----

qwertyMask := "
(Join`r`n
        q w e r t    u i o p [
         a s d f g    j k l ; '
  @LShift z x c v      m , . / @RShift
)"

layer1 := "
(Join`r`n
 q f d m w  : , i y z
 p s t r l  . a e h k
 b c g n v  x o ; u j
)"

layer1sh := "
(Join`r`n
 Q F D M W  < > I Y Z
 P S T R L  ? A E H K
 B C G N V  X O / U J
)"

layerAltGr := "
(Join`r`n
 # ! ( { [  ] } ) * ^
 ? - . , /  $ " _ ' +
 \ ; | = @  & : < > %
)"

 

; main layer
CreateLayer(1)

; 2nd layer, 
CreateLayer(2, "RAlt", 1)
; CreateLayer(2, "Space", 0)

AddMappings(1, 1, qwertyMask, layer1sh)
AddMappings(1, 0, qwertyMask, layer1)
AddMappings(2, 0, qwertyMask, layerAltGr)

AddMappings(1, 0, '1 2 3 4 5  7 8 9 0 -', '4 0 1 2 3   7 6 5 9 8')


;--------

; #include ../common/extend/extendSpace2.ahk
#include ../common/extend/extendWide2Base.ahk

; SetupExtend2('LAlt')

SetupExtend2('Space')
extHK('b', 'Space') 
extHKitself('', 'Space')


DisplayHelpImage()
return

;------

; other hotkey defs

#include ../common/commonHotkeys.ahk


