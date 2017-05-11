; PLace #includes and things to add to ahk script here 

; Global variables
; MUST be declared *before* including scripts
global LayoutDir := "%A_ScriptDir%"
global ExtendKey := "CapsLock"
global ImgWidth := 296
global ImgHeight := 112
global HasAltGr := 1
; Define one of the two or none to use xCenter (on 1st monitor)
; global CenterOnCurrWindow := 1
global CenterOnCurrWndMonitor := 1

; code only includes
#include ../../groups.ahk
#include ../../clipboardToBash.ahk
#include ../../fromPkl/pkl_gui.ahk

DisplayHelpImage()
return

;------

; hotkey defs
#include ../../altGrWide.ahk
#include ../../extend-wide.ahk
#include ../../commonHotkeys.ahk
