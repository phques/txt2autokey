/*

2019-03-04
26v1

allcharsstd
,.-"_')(;=:/*!?$>{}[]\+|&<
%@# 
^`~ (not on layers)


*/

; code only includes

; Global variables for pkl_guiLayers.ahk / layout image
; MUST be declared *before* scripts that use them
global ImgsDir := A_ScriptDir . "\imgs"
global ImgWidth := 150
global ImgHeight := 50
global CenterOnCurrWndMonitor := 1

#include ../../common/layers.ahk
#include ../../common/groups.ahk
#include ../../common/clipboardToBash.ahk
#include ../../common/fromPkl/pkl_guiLayers.ahk

; ----

layer1 := "
(Join`r`n
     q w e r     u i o p      _  f  o  u         d  n  c  z
     a s d f g h j k l ;      g  h  e  a  ,   m  t  s  r  p
  @LSh z x c     m , . /      k  y  .  i         l  b  w  v
)"

layer1sh := "
(Join`r`n`
     q w e r     u i o p      #  F  O  U         D  N  C  Z
     a s d f g h j k l ;      G  H  E  A  %   M  T  S  R  P
  @LSh z x c     m , . /      K  Y  @  I         L  B  W  V
)"


layer2Syms := "
(Join`r`n
     q w e r     u i o p      <  >  /  !         *  q  $  &
     a s d f g h j k l ;      \  x  (  -  {   }  "  )  '  ?
  @LSh z x c     m , . /      |  :  [  ;         j  ]  =  +
)"

layer2ShLetters := "s m i   X J Q"


; -- main layer --

CreateLayer(1)
AddMappingsOne(1, 0, layer1)
AddMappingsOne(1, 1, layer1Sh)

; -- 2nd layer  --

; CreateLayer(2, "RAlt", 0)
CreateLayer(2, "Space", 0)
AddMappingsOne(2, 0, layer2Syms)
AddMappingsOne(2, 1, layer2ShLetters)

AddMappings(1, 0, 'Capslock', ';') 
AddMappings(1,0, "b", "LAlt")   ; add alt keys !
AddMappings(1,0, "n", "backspace")
; AddMappings(1,0, "b n", "LAlt RAlt")   ; add alt keys !


; -- punctuation / symbols layer --

#include ../../common/puncLayer.ahk

layerAccessKey := "RAlt"
blockAccessKey := 1
layerNo := 3
wideRightPunc := 0  ; when true, punc layer right hand is shifted to the right for easier access to alt key
CreatePuncLayer(layerNo, layerAccessKey, blockAccessKey, wideRightPunc) 


; -- extend / edit layer --

#include ../../common/extend/extend2Base.ahk

SetupExtend2('LAlt')

; SetupExtend2('Space')
; extHK('b', 'Space') 
; extHKitself('', 'Space')

; -------

DisplayHelpImage()
return

;------

; other hotkey defs

#include ../../common/commonHotkeys.ahk

