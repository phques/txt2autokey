; PLace #includes and things to add to ahk script here 

; Global variables for pkl_gui.ahk / layout image
; MUST be declared *before* scripts that use them
global LayoutDir := "%A_ScriptDir%"
; global ExtendKey := "CapsLock"
; global ImgWidth := 296
; global ImgHeight := 89
global ImgWidth := 284
global ImgHeight := 46
global HasAltGr := 1
; Define one of the two or none to use xCenter (on 1st monitor)
; global CenterOnCurrWindow := 1
global CenterOnCurrWndMonitor := 1

; have to be careful, no init code will run if any include that 
; declares a hotkey is included before it
#include ../../../groups.ahk
#include ../../../clipboardToBash.ahk
#include ../../../fromPkl/pkl_gui.ahk

#include extendLayer.ahk

#include ../../../altGr.ahk
#include ../../../extend.ahk
;#include ../../../extendSpace.ahk

#include ../../../commonHotkeys.ahk

return

