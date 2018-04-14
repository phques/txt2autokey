/*

2018-04-10

chars left to place
=:_/*

$>{}[]\+|&<%@#^`~


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

; Turns ON hoem pos on Caps/Q/W/D -- L/P/{/Enter
crazyFingering := 1

if (crazyFingering)
{
    qwertyMask18 := "
    (Join`r`n
                 q w e   o p [
        CapsLock a s d   l ; ' Enter
        @LShift      x   .     @RShift
    )"
}
else
{
    qwertyMask18 := "
    (Join`r`n
              w e r   i o p
            a s d f   k l ; '
      @LShift    c    ,     @RShift
    )"
}

; ----

;SetNoKeyChar('~')

layer1 := "
(Join`r`n
    n r d   i e h  
  m l s t   a o y g
  f     c   u     p
)"

layer1sh := "
(Join`r`n
    N R D   I E H  
  M L S T   A O Y G
  F     C   U     P
)"

layer2 := "
(Join`r`n
    v . j   " b w  
  ! x - ,   k ' z ;
  (     ?   q     )
)"

layer2sh := "
(Join`r`n
    V = J   : B W  
  { X / *   K + Z }
  [     ?   Q     ]
)"

 

; main layer
CreateLayer(1)

; 2nd layer, 
if (crazyFingering)
    CreateLayer(2, "RAlt", 1)
else
    CreateLayer(2, "Space", 0)

AddMappings(1, 1, qwertyMask18, layer1sh)
AddMappings(2, 1, qwertyMask18, layer2sh)
AddMappings(1, 0, qwertyMask18, layer1)
AddMappings(2, 0, qwertyMask18, layer2)
SetNoKeyChar('')
AddMappings(2, 0, '2 3', '~ $')

AddMappings(1, 0, '1 2 3 4 5  7 8 9 0 -', '4 0 1 2 3   7 6 5 9 8')
if (crazyFingering)
{
    ; thumb
    AddMappings(1, 0, 'm', 'Enter')
    AddMappings(1, 0, 'appskey', 'Enter')
    AddMappings(1, 0, 'n', 'Control')
    
    AddMappings(1, 1, ']', 'Delete')
    AddMappings(1, 0, ']', 'BackSpace')
}
    
; ---------------

#include ../../common/extend/extendWide2BaseShLeft.ahk
#include ../../common/extend/extendCapsEnterBase.ahk

if (crazyFingering) 
{
    SetupExtendCapsEnter('Space')
    extHK('b', 'Space') 
    extHKitself('', 'Space')
}
else
{    SetupExtend2('LAlt')
    ; SetupExtend2('Space')

    ; this one will autorepeat Space, since space itself will not (dual mode cant)
    ; extHK('b', 'Space') 

    ; space press/release outputs space (dual mode)
    ; extHKitself('', 'Space')
}

DisplayHelpImage()
return

;------

; other hotkey defs

; #include ../../common/capsLock.ahk
; #include ../../common/extend/extendLAlt.ahk
#include ../../common/commonHotkeys.ahk

;#include extraKeyDefs.ahk

