/*

US kbd, 'wide' and angleZ mods

2018-04-07
22v1.3b

swap g-k, to make 'key' easier .. test!
example : "MakeKeySC" is easier
slightly worst KLA score for code,
and +1% because of higher distance on text use

*/

; code only includes

; Global variables for pkl_guiLayers.ahk / layout image
; MUST be declared *before* scripts that use them
global ImgsDir := A_ScriptDir . "\imgs\v1.3"
global ImgWidth := 174
global ImgHeight := 54
global CenterOnCurrWndMonitor := 1

#include ../../common/layers.ahk
#include ../../common/groups.ahk
#include ../../common/clipboardToBash.ahk
#include ../../common/fromPkl/pkl_guiLayers.ahk

; Qwerty mask
fromQwerty := "
(Join`r`n
             w e r      i o p
           a s d f g  j k l ; '
    @LShift z x c       , . / @RShift
)"

fromQwertyAltGrSh := "
(Join`r`n
      e       i o p
    s d f       l     
       c      ,         
)"

; ----

layer1 := "
(Join`r`n
    p o u          l d c     
  k h e a [      ] n t s b   
  g y . i          r m f v   
)"

layer1sh := "
(Join`r`n
    P O U          L D C     
  K H E A |      # N T S B   
  G Y \ I          R M F V   
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
CreateLayer(2, "RAlt", 1)
; CreateLayer(2, "Space", 0)

AddMappings(1, 1, fromQwerty, layer1sh)
AddMappings(1, 0, fromQwerty, layer1)
AddMappings(2, 1, fromQwertyAltGrSh, layerAltGrSh)
AddMappings(2, 0, fromQwerty, layerAltGr)

AddMappings(1, 0, '1 2 3 4 5  7 8 9 0 -', '4 0 1 2 3   7 6 5 9 8')

;--------

; #include ../../common/extend/extendSpace2.ahk
#include ../../common/extend/extendWide2Base.ahk

; SetupExtend2('LAlt')

SetupExtend2('Space')
extHK('b', 'Space') 
extHKitself('', 'Space')

DisplayHelpImage()
return

;------

; other hotkey defs

#include ../../common/commonHotkeys.ahk


