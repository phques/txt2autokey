/*

2018-04-12

AdNW
LaSalle fingering on 21 keys, with modified beakl 8-9 weights (PQuesnel)
Use most comfortable fingers keys, based on LaSalle fingering AWEF home row

Using (taken from mtgap allChars)
etaoinsrhldcumfgpywb,
.vk-"_'x)(;jq=:z/*!?$

>{}[]\+|&<%@#^`~


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
crazyFingering := 0

if (crazyFingering)
{
    qwertyMask21 := "
    (Join`r`n
                 q w e   o p [
        CapsLock a s d   l ; ' Enter
        @LShift      x   .     @RShift
    )"
}
else
{
    ; angleZ + 'wide' mod
    qwertyMask21 := "
    (Join`r`n
            q w e r    i o p [
            a s d f    k l ; '
      @LShift    c   m ,     @RShift
    )"
}

; ----


layer1 := "
(Join`r`n
  g h e a       d s n b 
  p u i o       t l r f 
  y     ,     m c     w 
)"

layer1sh := "
(Join`r`n
  G H E A       D S N B 
  P U I O       T L R F 
  Y     #     M C     W 
)"

layer2 := "
(Join`r`n
  = v . ;       j k " * 
  ? ! ( -       ' q x z 
  /     :     ) $     _ 
)"

; manually placed .. prob need to revise all puncs/syms !
; use shift-altGr only for uppercase text 
; and find another way to use yet another layer for lotsa syms !?
layer2sh := "
(Join`r`n
  ^ V \ %       J K | `` 
  { [ ] }       + Q X Z 
  <     >     @ &     ~ 
)"

 

; main layer
CreateLayer(1)

; 2nd layer, 
if (crazyFingering)
    CreateLayer(2, "RAlt", 1)
else
    CreateLayer(2, "Space", 0)

SetNoKeyChar('~')
AddMappings(1, 1, qwertyMask21, layer1sh)
SetNoKeyChar('')
AddMappings(2, 1, qwertyMask21, layer2sh)
AddMappings(1, 0, qwertyMask21, layer1)
AddMappings(2, 0, qwertyMask21, layer2)
AddMappings(2, 0, '2 3', '~ $')

AddMappings(1, 0, '1 2 3 4 5  7 8 9 0 -', '4 0 1 2 3   7 6 5 9 8')
if (crazyFingering)
{
    ; enter on right thumb
    AddMappings(1, 0, 'm', 'Enter')
    
}
    
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

