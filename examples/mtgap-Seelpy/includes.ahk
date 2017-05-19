; PLace #includes and things to add to ahk script here 

; Global variables for pkl_gui.ahk / layout image
; MUST be declared *before* scripts that use them
global LayoutDir := "%A_ScriptDir%"
global ExtendKey := "Space" ;; ctually layer 2! = Shifted keys !!
global ImgWidth := 284
global ImgHeight := 46
global HasAltGr := 1
; Define one of the two or none to use xCenter (on 1st monitor)
; global CenterOnCurrWindow := 1
global CenterOnCurrWndMonitor := 1

; code only includes
#include ../common/groups.ahk
#include ../common/clipboardToBash.ahk
#include ../common/fromPkl/pkl_gui.ahk

; we use this to output some chars on special keys, cf extraKeyDefs.ahk  
; (just a copy of extendDoKey, but diff name, clashes with doKey of extendLAlt)
doKey2(k, up)
{
	SetKeyDelay -1
	if (up)
		Send {Blind}{%k% Up}
	else
		Send {Blind}{%k% DownTemp}
}


#include layerInitShifted.ahk

DisplayHelpImage()
return

;------

; hotkey defs

#include ../common/capsLock.ahk
#include ../common/extend/extendLAlt.ahk
#include ../common/commonHotkeys.ahk

#include extraKeyDefs.ahk

