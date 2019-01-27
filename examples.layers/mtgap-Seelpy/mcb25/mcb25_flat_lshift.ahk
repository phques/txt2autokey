/*

2018-04-29
v5

2019-01-26
adj for non-wide and no 2nd layer (move xjqz to normal layer)
left hand shifted right to allow use of zxcv in more natural direction

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
      q w e r t   y u i o p 
      a s d f g   h j k l ; '
       z x c v b  n m , . / 
)"


; ----

layer1 := "
(Join`r`n
 q _  p  o  u      z  n  d  f  v
 ; g  i  a  e      l  r  t  s  c "
  k  ,  .  y  x    j  h  w  m  b
)"

layer1sh := "
(Join`r`n
 Q  -  P  O  U      Z  N  D  F  V
 :  G  I  A  E      L  R  T  S  C '
   K  /  %  Y X     J  H  W  M  B
)"


; main layer
CreateLayer(1)

AddMappings(1, 1, qwertyMask, layer1sh)
AddMappings(1, 0, qwertyMask, layer1)
SetNoKeyChar('')

;AddMappings(1, 0, '1 2 3 4 5  7 8 9 0 -', '4 0 1 2 3   7 6 5 9 8')
;AddMappings(1, 0, 'Capslock', ';') 


CreateLayer(3, "RAlt", 1) 
; SetNoKeyChar('.')
; AddMappings(3, 0, qwertyMask, layer3)

AddMappings(3, 0, '  q w e r t     u i o p   ',  ' `` $ < - >       _ [ ] @  ')
AddMappings(3, 0, "  a s d f g   h j k l `;  ",  '  ? \ ( ! )     % { = } |  ')
AddMappings(3, 0, '   x c v        m , .     ',  "     # * +        & ^ ~    ") 

; add alt keys !
;AddMappings(1,0, "b n", "LAlt RAlt")


; ---------------

#include ../../common/extend/extendSpace2_lshift.ahk

DisplayHelpImage()
return

;------

; other hotkey defs

#include ../../common/commonHotkeys.ahk

