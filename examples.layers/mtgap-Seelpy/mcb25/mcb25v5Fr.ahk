/*

2018-04-29
  2019-03-01
  v5, non wide ver
  with puncs/sym vs french layer2, toggle win-ins

allcharsstd
,.-"_')(;=:/*!?$>{}[]\+|
&<%@#^`~


*/

; code only includes

; Global variables for pkl_guiLayers.ahk / layout image
; MUST be declared *before* scripts that use them
global ImgsDir := A_ScriptDir . "\imgs\v5NonWide"
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
     q w e r    u i o p      / p o u     n d f v 
     a s d f  h j k l ;      g i a e   l r t s c
  @LSh z x c    m , . /      k , . y     h w m b
)"

layer1sh := "
(Join`r`n
     q w e r    u i o p      ? P O U     N D F V
     a s d f  h j k l ;      G I A E   L R T S C
  @LSh z x c    m , . /      K ! @ Y     H W M B
)"


layer2ShLetters := "i o j m    Q Z X J"

layer2Syms := "
(Join`r`n
     q w e r    u i o p      + : ; /     $ q z |
     a s d f  h j k l ;      ? - ( '   * x ) " >
  @LSh z x c    m , . /      \ ! { =     j } [ ]
)"

layer2French := "
(Join`r`n
     q w e r     u i o p      [ ï ô û     = q  z ]
     a s d f g h j k l ;      ; î à é ê - x '  " ç
  @LSh z x c     m , . /      { ( â è     j `` ) }
)"


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


;
; Win-Ins
; swap syms / French on layer2 (toggle)
toggledToFrench := 0
#Insert::
  if (toggledToFrench) {
    AddMappingsOne(2, 0, layer2Syms)
    toggledToFrench := 0
  } 
  else {
    AddMappingsOne(2, 0, layer2French)
    toggledToFrench := 1
  }
return

#include ../../common/commonHotkeys.ahk

