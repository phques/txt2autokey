/*

2018-04-18

*/

; code only includes

; Global variables for pkl_guiLayers.ahk / layout image
; MUST be declared *before* scripts that use them
global ImgsDir := A_ScriptDir . "\imgs\v1"
global ImgWidth := 170
global ImgHeight := 98
global CenterOnCurrWndMonitor := 1

#include ../../common/layers.ahk
#include ../../common/groups.ahk
#include ../../common/clipboardToBash.ahk
#include ../../common/fromPkl/pkl_guiLayers.ahk

; home pos on Caps/Q/W/D -- L/P/{/Enter
; seems more natural on right hand to use mid col low index vs just low index !
qwertyMask18 := "
 (Join`r`n
              q w e      o p [
     CapsLock a s d f  k l ; ' Enter
                  x     ,           
 )"

; ----

SetNoKeyChar('~')

layer1 := "
(Join`r`n
    r n d       i e t   
  c l h s f   y a o g p 
        m      u       
)"

layer1sh := "
(Join`r`n
    R N D       I E T   
  C L H S F   Y A O G P 
        M      U       
)"

layer2 := "
(Join`r`n
    v . ;       ' w b   
  ! x - , (   ) k z q " 
        ?      j       
)"

layer2sh := "
(Join`r`n
    V ~ ~       ~ W B   
  ~ X ~ ~ ~   ~ K Z Q ~ 
        ~      J       
)"

 

; main layer
CreateLayer(1)

; 2nd layer, 
; CreateLayer(2, "RAlt", 1) ;; on Mircosoft
CreateLayer(2, "Space", 0) ;; on Dell kbd @ work

AddMappings(1, 1, qwertyMask18, layer1sh)
AddMappings(2, 1, qwertyMask18, layer2sh)
AddMappings(1, 0, qwertyMask18, layer1)
AddMappings(2, 0, qwertyMask18, layer2)
SetNoKeyChar('')

AddMappings(1, 0, '`` 1 2 3 4   8 9 0 - =', '4 0 1 2 3   7 6 5 9 8')

AddMappings(2, 0, '``', 'CapsLock')
AddMappings(1, 1, ']', 'Delete')
AddMappings(1, 0, ']', 'BackSpace')

; thumbs
AddMappings(1, 0, 'appskey', 'Enter')

; on Microsoft Sculpt Ergo
AddMappings(1, 0, 'n', 'Control')
AddMappings(1, 0, 'm', 'Enter')

; using ',' for main layer !
; AddMappings(1, 0, 'm', 'Control')
; AddMappings(1, 0, ',', 'Enter')

AddMappings(2, 1, 'c', 'LShift')
AddMappings(2, 0, 'c', 'LShift')
AddMappings(1, 1, 'c', 'LShift')
AddMappings(1, 0, 'c', 'LShift')
    
; ---------------

#include ../../common/extend/extendWide2BaseShLeft.ahk
#include ../../common/extend/extendCapsEnterBase.ahk

; on Microsoft Sculpt Ergo
; SetupExtendCapsEnter('Space')
; extHK('b', 'Space') 
; extHKitself('', 'Space')

SetupExtendCapsEnter('LAlt')

DisplayHelpImage()

return

;------

; other hotkey defs

; #include ../../common/capsLock.ahk
; #include ../../common/extend/extendLAlt.ahk
#include ../../common/commonHotkeys.ahk

;#include extraKeyDefs.ahk

