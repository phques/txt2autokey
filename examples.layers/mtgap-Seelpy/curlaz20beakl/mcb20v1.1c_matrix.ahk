/*
version for use on SmartYao LY092-SN kbd w. 'qwerty ref base'

2018-04-08
mcb20v1.1c
manually adjusted 1.1b,
try to avoid shift-altgr, moved symbols to other spots,
using free keys 

*/

; code only includes

; Global variables for pkl_guiLayers.ahk / layout image
; MUST be declared *before* scripts that use them
global ImgsDir := A_ScriptDir . "\imgs\v1.1c"
global ImgWidth := 170
global ImgHeight := 100
global CenterOnCurrWndMonitor := 1

#include ../../common/layers.ahk
#include ../../common/groups.ahk
#include ../../common/clipboardToBash.ahk
#include ../../common/fromPkl/pkl_guiLayers.ahk
#include ../../common/qwertyMasks.ahk

; qwertyMask30

; ----

SetNoKeyChar('~')

layer1 := "
(Join`r`n
  i f o u @   _ n d c l
  g h e a &   | r t s p
  { y . i ~   ~ l m b }
)"

layer1sh := "
(Join`r`n
  I F O U ~   ~ N D C L
  G H E A #   % R T S P
  ~ Y ! I ~   ~ L M B ?
)"

layer2 := "
(Join`r`n
 `` < = : ~   ~ q k > ^
  ( v - , +   \ ' w " )
  [ / * ; ~   ~ x j z ]
)"

layer2sh := "
(Join`r`n
  ~ ~ ~ ~ ~   ~ Q K ~ ~
  ~ V ~ ~ ~   ~ ~ W ~ ~
  ~ ~ ~ ~ ~   ~ X J Z ~
)"

 

; main layer
CreateLayer(1)

; 2nd layer, 
; since SmartYao LY092-SN doesnt output RAlt,
; we use num5 as AltGr key (physically placed under thumb)
CreateLayer(2, "Numpad5", 1)

AddMappings(1, 1, qwertyMask30, layer1sh)
AddMappings(2, 1, qwertyMask30, layer2sh)
AddMappings(1, 0, qwertyMask30, layer1)
AddMappings(2, 0, qwertyMask30, layer2)
SetNoKeyChar('')
AddMappings(2, 0, '2 3', '~ $')

AddMappings(1, 0, '1 2 3 4 5   6 7 8 9 0', '4 0 1 2 3   7 6 5 9 8')

; ---------------

#include ../../common/extend/extendSpace2.ahk

DisplayHelpImage()
return

;------

; other hotkey defs

; #include ../../common/capsLock.ahk
; #include ../../common/extend/extendLAlt.ahk
#include ../../common/commonHotkeys.ahk

;#include extraKeyDefs.ahk

