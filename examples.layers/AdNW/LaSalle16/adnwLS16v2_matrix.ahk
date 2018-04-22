/*

2018-04-20 adnw lasalle16v3, w. manually added keys: qzj`@$

*/

; code only includes

; Global variables for pkl_guiLayers.ahk / layout image
; MUST be declared *before* scripts that use them
global ImgsDir := A_ScriptDir . "\imgs\v2"
global ImgWidth := 170
global ImgHeight := 94
global CenterOnCurrWndMonitor := 1

#include ../../common/layers.ahk
#include ../../common/groups.ahk
#include ../../common/clipboardToBash.ahk
#include ../../common/fromPkl/pkl_guiLayers.ahk

; Turns ON hoem pos on Caps/Q/W/D -- L/P/{/Enter
qwertyMask := "
(Join`r`n
 q w e r     u i o p
 a s d f g h j k l ;
 z     v     m     /
)"

; ----

SetNoKeyChar('~')

layer1 := "
(Join`r`n
  ~ n s d       a e h ~
  c r l t m   g o i u f 
  q     z       g     j
)"

layer1sh := "
(Join`r`n
  ~ N S D       A E H ~
  C R L T M   G O I U F 
  Q     Z       G     J
)"

layer2 := "
(Join`r`n
  ~ p . -       x w b ~ 
  ? ; v , !   : y ' k " 
  $     ~       ``    @
)"

layer2sh := "
(Join`r`n
  ~ P ~ ~       X W B ~
  ~ ~ V ~ ~   ~ Y ~ K ~ 
  ~     ~       ~     ~ 
)"

; SetNoKeyChar('')

layer3 := "
(Join`r`n
  \ ( ) /       _ { } ~
  * < > : #   % = [ ] | 
  !     +       &     ^
)"
 

; main layer
CreateLayer(1)

; 2nd layer, 
; since SmartYao LY092-SN doesnt output RAlt,
; we use num5 as AltGr key (physically placed under thumb)
CreateLayer(2, "Numpad5", 1)

SetNoKeyChar('~')
AddMappings(1, 1, qwertyMask, layer1sh)
AddMappings(2, 1, qwertyMask, layer2sh)
AddMappings(1, 0, qwertyMask, layer1)
AddMappings(2, 0, qwertyMask, layer2)
AddMappings(1, 0, '1 2 3 4 5  6 7 8 9 0', '4 0 1 2 3   7 6 5 9 8')

; CreateLayer(3, "RAlt", 1) 
CreateLayer(3, "LAlt", 1) 
SetNoKeyChar('')
AddMappings(3, 0, qwertyMask, layer3)

AddMappings(1, 0, 'p', 'BackSpace')
AddMappings(1, 1, 'p', 'Delete')

   
; ---------------

; need a 'normal home' LaSalle extend
; #include ../../common/extend/extendSpace2.ahk


DisplayHelpImage()
return

;------

; other hotkey defs

#include ../../common/commonHotkeys.ahk

