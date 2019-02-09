/*
http://shenafu.com/smf/index.php?topic=89.msg2409#msg2409

Den's
BEAKL PLLT x1
('seelpy style')

PQ
2019-02-08


*/

; code only includes

; Global variables for pkl_guiLayers.ahk / layout image
; MUST be declared *before* scripts that use them
global ImgsDir := A_ScriptDir . "\imgs"
global ImgWidth := 150
global ImgHeight := 94
global CenterOnCurrWndMonitor := 1

#include ../common/layers.ahk
#include ../common/groups.ahk
#include ../common/clipboardToBash.ahk
#include ../common/fromPkl/pkl_guiLayers.ahk

qwertyMask := "
(Join`r`n
   w e r    y u i o
 a s d f g  h j k l ;
   z  c       m , .
)"

; ----

layer1 := "
(Join`r`n
   i u  o    w m d n 
 y e SP a g  h r t s p
   ,    .      l c f 
)"

layer1sh := "
(Join`r`n
   I U O    W M D N 
 Y E " A G  H R T S P
   ;   :      L C F 
)"

layer2 := "
(Join`r`n
   q $ j    z v ! #
 ? ( - ) '  k { = } &
   *   /      + x b
)"

; repeat ?$# so we have same nbr of chars
layer2sh := "
(Join`r`n
   Q $ J     Z V | #
 ? < _ > ``  K [ @ ] %
   ^   \       ~ X B
)"


; main layer
CreateLayer(1)

; 2nd layer, 
;CreateLayer(2, "RAlt", 1)
;CreateLayer(2, "Space", 0)
CreateLayer(2, "Space", 1) ; block actual SPm force using the one on D)

AddMappings(1, 1, qwertyMask, layer1sh)
AddMappings(2, 1, qwertyMask, layer2sh)
AddMappings(1, 0, qwertyMask, layer1)
AddMappings(2, 0, qwertyMask, layer2)
SetNoKeyChar('')

; ---------------

#include ../common/extend/extendWide2BaseShLeft.ahk

;SetupExtend2('LAlt')

; SetupExtend2('Space')
; extHK('b', 'Space') 
; extHKitself('', 'Space')

DisplayHelpImage()
return

;------

; other hotkey defs

#include ../common/commonHotkeys.ahk

