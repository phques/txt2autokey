/*

2018-04-20 adnw lasalle16v3, w. manually added keys: qzj`@$

*/

; code only includes

; Global variables for pkl_guiLayers.ahk / layout image
; MUST be declared *before* scripts that use them
global ImgsDir := A_ScriptDir . "\imgs\v3"
global ImgWidth := 170
global ImgHeight := 94
global CenterOnCurrWndMonitor := 1

#include ../../common/layers.ahk
#include ../../common/groups.ahk
#include ../../common/clipboardToBash.ahk
#include ../../common/fromPkl/pkl_guiLayers.ahk

; Turns ON hoem pos on Caps/Q/W/D -- L/P/{/Enter
qwertyMask := "
(Join`r`n
        Tab  q w e      o p [ ]
    CapsLock a s d f  k l ; ' Enter
    @LShift      x      .    @RShift
)"

; ----

SetNoKeyChar('~')

; add in missing jqz
layer1 := "
(Join`r`n
  ~ o a u       d s n ~
  g h i e f   m t l r c 
  j     ~       z     q
)"

layer1sh := "
(Join`r`n
  ~ O A U       D S N ~
  G H I E F   M T L R C 
  J     ~       Z     Q
)"

layer2 := "
(Join`r`n
  ~ y . -       ' b p ~ 
  ! x v , ?   : w k ; " 
  $     ~       ``    @
)"

layer2sh := "
(Join`r`n
  ~ Y ~ ~       ~ B P ~ 
  ~ X V ~ ~   ~ W K ~ ~ 
  ~     ~       ~     ~
)"

; SetNoKeyChar('')

layer3 := "
(Join`r`n
  \ ( ) /       _ { } ~
  * < > : #   % = [ ] | 
  !     +       &     ^
)"
 

; main layer
CreateLayer(1)

; 2nd layer, 
CreateLayer(2, "Space", 0) ;; on Dell kbd @ work

SetNoKeyChar('~')
AddMappings(1, 1, qwertyMask, layer1sh)
AddMappings(2, 1, qwertyMask, layer2sh)
AddMappings(1, 0, qwertyMask, layer1)
AddMappings(2, 0, qwertyMask, layer2)

CreateLayer(3, "RAlt", 1) 
SetNoKeyChar('')
AddMappings(3, 0, qwertyMask, layer3)


AddMappings(1, 0, '`` 1 2 3 4   8 9 0 - =', '4 0 1 2 3   7 6 5 9 8')

AddMappings(2, 0, '``', 'CapsLock')
AddMappings(1, 1, ']', 'Delete')
AddMappings(1, 0, ']', 'BackSpace')

; thumbs
AddMappings(1, 0, 'appskey', 'Enter')

; on Microsoft Sculpt Ergo
; AddMappings(1, 0, 'n', 'Control')
; AddMappings(1, 0, 'm', 'Enter')

AddMappings(1, 0, 'm', 'Control')
AddMappings(1, 0, ',', 'Enter')

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

#include ../../common/commonHotkeys.ahk

