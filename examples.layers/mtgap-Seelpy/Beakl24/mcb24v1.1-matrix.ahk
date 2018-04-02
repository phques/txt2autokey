/*
version for use on SmartYao LY092-SN kbd w. 'qwerty ref base'

2018-03-30
20v1.1b (1.1 new run)


*/

; code only includes

; Global variables for pkl_guiLayers.ahk / layout image
; MUST be declared *before* scripts that use them
global ImgsDir := A_ScriptDir . "\imgs\v1.1b"
global ImgWidth := 110
global ImgHeight := 110
global CenterOnCurrWndMonitor := 1

#include ../../common/layers.ahk
#include ../../common/groups.ahk
#include ../../common/clipboardToBash.ahk
#include ../../common/fromPkl/pkl_guiLayers.ahk

; Qwerty mask
fromQwerty := "
(Join`r`n
    w e r  u i o    
  a s d f  j k l ; 
    x c v  m , .    
)"

; ----

layer1 := "
(Join`r`n
    f o u   n d c     
  g h e a   r t s p   
    y . i   l m b     
)"

layer2 := "
(Join`r`n
    ( = :   q k )     
  { v - ,   ' w " }   
    / * ;   x j z     
)"

layer1sh := "
(Join`r`n
    F O U   N D C     
  G H E A   R T S P   
    Y ! I   L M B     
)"

layer2sh := "
(Join`r`n
    [ % ``  Q K ]     
  < V & +   | W \ >   
    ? # ^    X J Z     
)"

 

; main layer
CreateLayer(1)

; 2nd layer, 
; since SmartYao LY092-SN doesnt output RAlt,
; we use num5 as AltGr key (physically placed under thumb)
CreateLayer(2, "Numpad5", 1)

AddMappings(1, 1, fromQwerty, layer1sh)
AddMappings(2, 1, fromQwerty, layer2sh)
AddMappings(1, 0, fromQwerty, layer1)
AddMappings(2, 0, fromQwerty, layer2)

AddMappings(1, 0, '1 2 3 4 5  6 7 8 9 0', '4 0 1 2 3   7 6 5 9 8')



#include ../../common/extend/extendSpace2.ahk

DisplayHelpImage()
return

;------

; other hotkey defs

; #include ../../common/capsLock.ahk
; #include ../../common/extend/extendLAlt.ahk
#include ../../common/commonHotkeys.ahk

;#include extraKeyDefs.ahk

