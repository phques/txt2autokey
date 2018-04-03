/*

2018-03-30
mcb24v1.2

*/

; code only includes

; Global variables for pkl_guiLayers.ahk / layout image
; MUST be declared *before* scripts that use them
global ImgsDir := A_ScriptDir . "\imgs\v1.2"
global ImgWidth := 110
global ImgHeight := 110
global CenterOnCurrWndMonitor := 1

#include ../../common/layers.ahk
#include ../../common/groups.ahk
#include ../../common/clipboardToBash.ahk
#include ../../common/fromPkl/pkl_guiLayers.ahk
#include ../../common/extend/extendWide2Base.ahk

; Qwerty mask
fromQwerty := "
(Join`r`n
         w e r       i o p
       a s d f g   j k l `; '
 @LShift z x c       , . / @RShift
)"

; ----

layer1 := "
(Join`r`n
    f  o  u         d  n  c
 g  h  e  a  ,   m  t  s  r  p
 k  y  .  i         l  b  w  v
)"

layer2 := "
(Join`r`n
   / : !      + = x
 < _ ( - *  q " ) ' >
 [ ? { ;      j } z ]
)"

layer1sh := "
(Join`r`n
    F  O  U         D  N  C
 G  H  E  A  ,   M  T  S  R  P
 K  Y  .  I         L  B  W  V
)"

layer2sh := "
(Join`r`n
    .  ~  .         .  .  X
 .  %  ``  &  .  Q  |  @  #  .
 .  .  .  $         J  .  Z  .
)"

 

; main layer
CreateLayer(1)

; 2nd layer, 
CreateLayer(2, "RAlt", 1)
; CreateLayer(2, "Space", 0)

AddMappings(1, 1, fromQwerty, layer1sh)
AddMappings(2, 1, fromQwerty, layer2sh)
AddMappings(1, 0, fromQwerty, layer1)
AddMappings(2, 0, fromQwerty, layer2)

AddMappings(1, 0, '1 2 3 4 5  7 8 9 0 -', '4 0 1 2 3   7 6 5 9 8')

; #include ../../common/extend/extendLAltWide2.ahk
; SetupExtend2('LAlt')
SetupExtend2('Space')

; this one will autorepeat Space, since space itself will not (dual mode cant)
extHK('b', 'Space') 

; space press/release outputs space (dual mode)
extHKitself('', 'Space')



DisplayHelpImage()
return

;------

; other hotkey defs

; #include ../../common/capsLock.ahk
; #include ../../common/extend/extendLAlt.ahk
#include ../../common/commonHotkeys.ahk

;#include extraKeyDefs.ahk

