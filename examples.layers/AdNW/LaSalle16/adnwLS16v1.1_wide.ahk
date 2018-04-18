/*

2018-04-13

swapped _() for :!? on altgr

etaoinsrhldcumfg

pywb,.vk-"'x;:!?

_()jq=z/*$>{}[]\+|&<%@#^`~



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

; Turns ON hoem pos on Caps/Q/W/D -- L/P/{/Enter
crazyFingering := 1

if (crazyFingering)
{
    qwertyMask := "
    (Join`r`n
            Tab  q w e      o p [ ]
        CapsLock a s d f  k l ; ' Enter
        @LShift      x    , .     @RShift
    )"
}
else
{
    qwertyMask := "
    (Join`r`n
            q w e r      i o p [
            a s d f g  j k l ; '
      @LShift    c     m ,     @RShift
    )"
}

; ----

; SetNoKeyChar('~')

; add in missing jqz
layer1 := "
(Join`r`n
  ~ n s d       i e h ~ 
  c r l t ~   ~ a o f g 
  q     m     z u     j  
)"

layer1sh := "
(Join`r`n
  ~ N S D       I E H ~
  C R L T ~   ~ A O F G 
  Q     M     Z U     J  
)"

layer2 := "
(Join`r`n
  ~ p . -         x w b ~
  ! ? v , ~    `` y ' k " 
  $     ;       ~ :     @
)"

layer2sh := "
(Join`r`n
  ~ P ~ ~       X W B ~
  ~ ~ V ~ ~   ~ Y ~ K ~ 
  ~     ~     ~ ~     ~ 
)"

; SetNoKeyChar("'")

layer3 := "
(Join`r`n
  \ ( ) /       _ { } ~
  * < > : #   % = [ ] | 
  !     +     '  &     ^
)"
 

; main layer
CreateLayer(1)

; 2nd layer, 
if (crazyFingering)
    CreateLayer(2, "Space", 0) ;; on Dell kbd @ work
else
    CreateLayer(2, "Space", 0)

SetNoKeyChar('~')
AddMappings(1, 1, qwertyMask, layer1sh)
AddMappings(2, 1, qwertyMask, layer2sh)
AddMappings(1, 0, qwertyMask, layer1)
AddMappings(2, 0, qwertyMask, layer2)

CreateLayer(3, "RAlt", 1) 
SetNoKeyChar("'")
AddMappings(3, 0, qwertyMask, layer3)

SetNoKeyChar('')


if (crazyFingering)
{
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
}
else
{
    AddMappings(1, 0, '1 2 3 4 5  7 8 9 0 -', '4 0 1 2 3   7 6 5 9 8')
}
    
; ---------------

#include ../../common/extend/extendWide2BaseShLeft.ahk
#include ../../common/extend/extendCapsEnterBase.ahk

if (crazyFingering) 
{
    ; on Microsoft Sculpt Ergo
    ; SetupExtendCapsEnter('Space')
    ; extHK('b', 'Space') 
    ; extHKitself('', 'Space')
    
    SetupExtendCapsEnter('LAlt')
}
else
{
    SetupExtend2('LAlt')
    
    ; SetupExtend2('Space')
    ; extHK('b', 'Space') 
    ; extHKitself('', 'Space')
}

DisplayHelpImage()
return

;------

; other hotkey defs

#include ../../common/commonHotkeys.ahk

