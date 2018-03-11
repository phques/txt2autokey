/*

*/

; Global variables for pkl_guiLayers.ahk / layout image
; MUST be declared *before* scripts that use them
global ImgsDir := A_ScriptDir . "\imgs\v1.4"
global ImgWidth := 110
global ImgHeight := 110  
global CenterOnCurrWndMonitor := 1

#include ../../common/layers.ahk
#include ../../common/groups.ahk
#include ../../common/clipboardToBash.ahk
#include ../../common/fromPkl/pkl_guiLayers.ahk


; -- layers --

; Qwerty mask
fromQwerty := "
( Join`s
  w e r   u i o 
  s d f   j k l 
  z x c   m , .
)"

layer1 := "
( Join`s
  c n g   u o p
  r s t   a e h
  m f l   i . d
)"

layer2 := "
( Join`s
  { x j   * q }
  ' b w   y , k
  z ; v   " ( )
)"

layer1sh := "
( Join`s
  C N G   U O P
  R S T   A E H
  M F L   I . D
)"

layer2sh := "
( Join`s
  < X J   * Q >
  ' B W   Y , K
  Z ; V   " [ ]
)"


; main layer
CreateLayer(1)

; 2nd layer, accessed w. Space, 
CreateLayer(2, 'Space', 0)

AddMappings(1, 1, fromQwerty, layer1sh)
AddMappings(1, 0, fromQwerty, layer1)
AddMappings(2, 1, fromQwerty, layer2sh)
AddMappings(2, 0, fromQwerty, layer2)


DisplayHelpImage()
return

;------

; other hotkey defs

#include ../../common/capsLock.ahk
#include ../../common/extend/extendLAlt.ahk
#include ../../common/commonHotkeys.ahk

;#include extraKeyDefs.ahk

