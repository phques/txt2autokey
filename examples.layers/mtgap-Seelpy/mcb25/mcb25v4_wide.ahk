/*

2018-04-29
v4

allcharsstd
,.-"_')(;=:/*!?$>{}[]\+|
&<%@#^`~


*/

; code only includes

; Global variables for pkl_guiLayers.ahk / layout image
; MUST be declared *before* scripts that use them
global ImgsDir := A_ScriptDir . "\imgs\v4"
global ImgWidth := 156
global ImgHeight := 109
global CenterOnCurrWndMonitor := 1

#include ../../common/layers.ahk
#include ../../common/groups.ahk
#include ../../common/clipboardToBash.ahk
#include ../../common/fromPkl/pkl_guiLayers.ahk

qwertyMask := "
(Join`r`n
        q w e r    i o p [
        a s d f  j k l ; ' 
  @LShift z x c    , . / @RShift
)"


; ----

layer1 := "
(Join`r`n
  _  p  o  u         d  n  c  x
  g  h  a  e      l  t  r  s  w
  .  y  ,  i         m  b  f  v
)"

layer1sh := "
(Join`r`n
  _  P  O  U         D  N  C  X
  G  H  A  E      L  T  R  S  W
  @  Y  ~  I         M  B  F  V
)"

layer2 := "
(Join`r`n
  |  /  ;  $         q  z  !  +
  :  '  (  -      *  k  )  ?  >
  [  =  \  "         j  {  }  ]
)"

layer2sh := "
(Join`r`n
  |  /  ;  $         Q  Z  !  +
  :  '  (  -      *  K  )  ?  >
  [  =  \  "         J  {  }  ]
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
SetNoKeyChar('')

AddMappings(1, 0, '1 2 3 4 5  7 8 9 0 -', '4 0 1 2 3   7 6 5 9 8')

CreateLayer(3, "RAlt", 1) 
; SetNoKeyChar('.')
; AddMappings(3, 0, qwertyMask, layer3)

AddMappings(3, 0, '  q w e r t     i o p [  ',  '  $ < - > ``       _ [ ] @  ')
AddMappings(3, 0, "  a s d f g   j k l `; ' ",  '  \ ( ! ) #      % { = } |  ')
AddMappings(3, 0, '  z x c         , . /    ',  "   : * +           & ^ ~    ") 

; add alt keys !
AddMappings(1,0, "b n", "LAlt RAlt")


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

