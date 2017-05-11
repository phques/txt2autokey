; extend layer, layer key = Space

#include ../../../layerKeyMappings.ahk

if (1)
{
	; original 'BEAKL 4 Mod Ian AltGr 3' alt layer

	from := ""
	 . " q w e r t  y u i o  p [ "
	 . " a s d f g  h j k l `; ' "
	 . " z x c v    n m , .  / "

	to := ""
	 . " [ $ = < _  & `" `; + ] \ "
	 . " 4 2 , 0 {  }  1  . 3 5 ^ "
	 . " 6 8 - '    :  *  > 9 7 "

	; MsgBox %from% `n %to%
	InitLayerMappings("Space")
	MapLayerHotkeys(from, to)
	
	; add a Space key so we can hold to repeat and/or 
	; insert space inbetween layer chars
	MapLayerHotkeys("b", "Space")
	; and Enter too
	MapLayerHotkeys("Enter", "Enter")

}
else
{
}

; re-enbale Space as a normal key too!
sc039::Space

;; +sp => Enter
+sc039::Enter
