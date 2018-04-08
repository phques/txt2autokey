/*
version for use on SmartYao LY092-SN kbd w. 'qwerty ref base'

2018-04-07
22v1.3


*/

; code only includes

; Global variables for pkl_guiLayers.ahk / layout image
; MUST be declared *before* scripts that use them
global ImgsDir := A_ScriptDir . "\imgs\v1.3"
global ImgWidth := 110
global ImgHeight := 110
global CenterOnCurrWndMonitor := 1

#include ../../common/layers.ahk
#include ../../common/groups.ahk
#include ../../common/clipboardToBash.ahk
#include ../../common/fromPkl/pkl_guiLayers.ahk

; Qwerty mask
fromQwerty := "
(Join`r`n
    w e r     u i o 
  a s d f g h j k l ; 
  z x c v     m , . /   
)"

fromQwertyAltGrSh := "
(Join`r`n
      e       u i o 
    s d f       k     
        v     m         
)"

; ----

layer1 := "
(Join`r`n
    p o u          l d c     
  g h e a [      ] n t s b   
  k y . i          r m f v   
)"

layer1sh := "
(Join`r`n
    P O U          L D C     
  G H E A |      # N T S B   
  K Y \ I          R M F V   
)"

layerAltGr := "
(Join`r`n
    = / :          j q z     
  ? ( - , &      + " w ) !   
  * ' { ;          x } < >   
)"

layerAltGrSh := "
(Join`r`n
      @            J Q Z     
    ^ $ %            W       
        ~          X         
)"

 

; main layer
CreateLayer(1)

; 2nd layer, 
; since SmartYao LY092-SN doesnt output RAlt,
; we use num5 as AltGr key (physically placed under thumb)
CreateLayer(2, "Numpad5", 1)

AddMappings(1, 1, fromQwerty, layer1sh)
AddMappings(1, 0, fromQwerty, layer1)
AddMappings(2, 1, fromQwertyAltGrSh, layerAltGrSh)
AddMappings(2, 0, fromQwerty, layerAltGr)

AddMappings(1, 0, '1 2 3 4 5  6 7 8 9 0', '4 0 1 2 3   7 6 5 9 8')


#include ../../common/extend/extendSpace2.ahk

DisplayHelpImage()
return

;------

; other hotkey defs

#include ../../common/commonHotkeys.ahk


