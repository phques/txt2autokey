/*

2018-04-26
v1.1

with ,.-"')(;=:/*!?{}
to add:
$>
[]\+|&<%@#^`~


*/

; code only includes

; Global variables for pkl_guiLayers.ahk / layout image
; MUST be declared *before* scripts that use them
global ImgsDir := A_ScriptDir . "\imgs\v1.1"
global ImgWidth := 156
global ImgHeight := 109
global CenterOnCurrWndMonitor := 1

#include ../../common/layers.ahk
#include ../../common/groups.ahk
#include ../../common/clipboardToBash.ahk
#include ../../common/fromPkl/pkl_guiLayers.ahk

qwertyMask := "
(Join`r`n
        q w e r t    u i o p [
        a s d f g    j k l ; '
  @LShift z x c v    m , . / @RShift
)"


; ----

SetNoKeyChar('~')

;; dup the bottom inside I and C to upper outside
layer1 := "
(Join`r`n
 i  f  o  u ~    ~  d  n  l  c
 g  h  e  a ~    m  t  s  r  p
 ~  y  .  i ~    ~  c  v  w  ~
)"

layer1sh := "
(Join`r`n
 I  F  O  U ~    ~  D  N  L  C
 G  H  E  A ~    M  T  S  R  P
 ~  Y  !  I ~    ~  C  V  W  ~
)"

layer2 := "
(Join`r`n
 ~  /  (  : ~    ~  j  )  z  ~
 ?  k  -  , ~    =  "  b  x  !
 ~  '  {  ; ~    ~  q  }  *  ~
)"

layer2sh := "
(Join`r`n
  ~ ~ ~ ~ ~   ~ J ~ Z ~
  ~ K ~ ~ ~   ~ ~ B X ~
  ~ ~ ~ ~ ~   ~ Q ~ ~ ~
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

; this one will autorepeat Space, since space itself will not (dual mode cant)
; extHK('b', 'Space') 

; space press/release outputs space (dual mode)
; extHKitself('', 'Space')

DisplayHelpImage()
return

;------

; other hotkey defs

#include ../../common/commonHotkeys.ahk

