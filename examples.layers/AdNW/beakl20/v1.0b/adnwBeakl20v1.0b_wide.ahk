/*

2018-04-10
adnw20v1.0b

manual adjustments of 1.0

*/

; code only includes

; Global variables for pkl_guiLayers.ahk / layout image
; MUST be declared *before* scripts that use them
global ImgsDir := A_ScriptDir . "/imgs"
global ImgWidth := 110
global ImgHeight := 110
global CenterOnCurrWndMonitor := 1

#include ../../../common/layers.ahk
#include ../../../common/groups.ahk
#include ../../../common/clipboardToBash.ahk
#include ../../../common/fromPkl/pkl_guiLayers.ahk

; Qwerty mask
qwertyMask30 := "
(Join`r`n
        q w e r t    u i o p [
         a s d f g    j k l ; '
  @LShift z x c v      m , . / @RShift
)"

; ----

layer1 := "
(Join`r`n
  l r c m @   _ u o p i 
  w n s t &   | e a h g 
  { l f d .   . i y b } 
)"

layer2 := "
(Join`r`n
 `` ( ! ; ~   ~ = z j ^ 
  / . , ' +   \ k v " ) 
  < ? : - ~   ~ x * q >
)"

layer1sh := "
(Join`r`n
  L R C M .   . U O P . 
  W N S T #   % E A H G 
  ~ L F D .   . I Y B $ 
)"

layer2sh := "
(Join`r`n
  . . . . .   . . Z J . 
  . . . . .   . K V . . 
  . . . . .   . X . Q . 
)"

;------

; main layer
CreateLayer(1)

; 2nd layer, 
; CreateLayer(2, "RAlt", 1)
CreateLayer(2, "Space", 0)

SetNoKeyChar('~')
AddMappings(1, 1, qwertyMask30, layer1sh)
AddMappings(2, 1, qwertyMask30, layer2sh)
AddMappings(1, 0, qwertyMask30, layer1)
SetNoKeyChar('~')
AddMappings(2, 0, qwertyMask30, layer2)

SetNoKeyChar('')
AddMappings(2, 0, '2 3', '[ ]')
AddMappings(1, 0, '1 2 3 4 5  7 8 9 0 -', '4 0 1 2 3   7 6 5 9 8')

; ---------------

#include ../../../common/extend/extendWide2BaseShLeft.ahk

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

; #include ../../../common/capsLock.ahk
; #include ../../../common/extend/extendLAlt.ahk
#include ../../../common/commonHotkeys.ahk

;#include extraKeyDefs.ahk

