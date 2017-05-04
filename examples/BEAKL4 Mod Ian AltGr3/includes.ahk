; PLace #includes and things to add to ahk script here 

; Global variables for pkl_gui.ahk / layout image
; MUST be declared *before* scripts that use them
global LayoutDir := "%A_ScriptDir%"
;global ExtendKey := "CapsLock"
global ImgWidth := 296
global ImgHeight := 112
global HasAltGr := 1
; Define one of the two or none to use xCenter (on 1st monitor)
; global CenterOnCurrWindow := 1
global CenterOnCurrWndMonitor := 1

#include ../../groups.ahk

#include ../../altGr.ahk
#include ../../extend.ahk

#include ../../clipboardToBash.ahk
#include ../../fromPkl/pkl_gui.ahk

#include ../../commonHotkeys.ahk

return
