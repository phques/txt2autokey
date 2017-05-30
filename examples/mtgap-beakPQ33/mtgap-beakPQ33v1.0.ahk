/*

*/

; -- layers --

#include ../common/layers.ahk
#include ../common/qwertyMasks.ahk
#include ../mtgap-curl33Layers/mtgap-curl33symLayerv1.0.ahk
 
layer1Sh := ""
 . ' [  Y  O  U  <   B  D  N  L  ]  J  Z '
 . ' G  H  E  A  /   M  T  S  R  P  Q '
 . ' K  >  I  {  }   V  C  F  W  X '

 
layer1 := ""
 . " '  y  o  u `;   b  d  n  l  ?  j  z "
 . ' g  h  e  a  ,   m  t  s  r  p  q '
 . ' k  "  i  .  :   v  c  f  w  x '
 

; main layer
CreateLayer(1)

; shifted chars 1st !
AddMappings(1, 1, qwertyMask33, layer1Sh)
AddMappings(1, 0, qwertyMask33, layer1)

; symbols layer
CreateSymbolsLayer(2, "Space", 0)

;------

; code only includes

; Global variables for pkl_guiLayers.ahk / layout image
; MUST be declared *before* scripts that use them
global ImgsDir := "%A_ScriptDir%"
global ImgWidth := 284
global ImgHeight := 46
global CenterOnCurrWndMonitor := 1

#include ../common/groups.ahk
#include ../common/clipboardToBash.ahk
#include ../common/fromPkl/pkl_guiLayers.ahk

DisplayHelpImage()
return

;------

; other hotkey defs

#include ../common/capsLock.ahk
#include ../common/extend/extendLAlt.ahk
#include ../common/commonHotkeys.ahk

;#include extraKeyDefs.ahk

