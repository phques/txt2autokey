/*

2018-04-29
v5

2019-02-05
adj for non-wide and no 2nd layer (move xjqz to normal layer)
left hand shifted let with k on Shift key 
use "wid mode" right hand for punc layer

*/

; code only includes

; Global variables for pkl_guiLayers.ahk / layout image
; MUST be declared *before* scripts that use them
global ImgsDir := A_ScriptDir . "\imgs\v5"
global ImgWidth := 150
global ImgHeight := 50
global CenterOnCurrWndMonitor := 1

#include ../../common/layers.ahk
#include ../../common/groups.ahk
#include ../../common/clipboardToBash.ahk
#include ../../common/fromPkl/pkl_guiLayers.ahk

qwertyMask := "
(Join`r`n
       q  w  e  r         u  i  o  p 
       a  s  d  f  g   h  j  k  l  ;  '
 @LShift  z  x  c  v   n  m  ,  .  / 
)"


; ----

layer1 := "
(Join`r`n
       q  p  o  u         n  d  f  v
       g  i  a  e  x   l  r  t  s  c "
       k  ,  .  y  z   j  h  w  m  b
)"

layer1sh := "
(Join`r`n
       Q  P  O  U         N  D  F  V
       G  I  A  E  X   L  R  T  S  C '
       K  /  ?  Y  Z   J  H  W  M  B
)"


; main layer
CreateLayer(1)

AddMappings(1, 1, qwertyMask, layer1sh)
AddMappings(1, 0, qwertyMask, layer1)
SetNoKeyChar('')

;AddMappings(1, 0, '1 2 3 4 5  7 8 9 0 -', '4 0 1 2 3   7 6 5 9 8')
AddMappings(1, 0, 'Capslock', ';') 


CreateLayer(3, "RAlt", 1) 
; SetNoKeyChar('.')
; AddMappings(3, 0, qwertyMask, layer3)

; use `wid` mode`right hand
AddMappings(3, 0, '  q w e r t   i o p [  ',  '  $ < - > ``   _ [ ] @  ')
AddMappings(3, 0, "  a s d f g   k l `; ' ",  '  \ ( ! ) #    { = } |  ')
AddMappings(3, 0, '  z x c       , . /    ',  "   : * +       & ^ ~    ") 

AddMappings(3,0, "Capslock", "`%")


; ---------------

#include ../../common/extend/extendSpace2_lshift-wrk.ahk

DisplayHelpImage()
return

;------

; other hotkey defs

#include ../../common/commonHotkeys.ahk

