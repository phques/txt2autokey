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
#include ../common/groups.ahk
#include ../common/clipboardToBash.ahk
#include ../common/fromPkl/pkl_gui.ahk

DisplayHelpImage()
return

;------

; hotkey defs
#include ../common/altGr/altGrWide.ahk
#include ../common/extend/extend-wide.ahk
#include ../common/commonHotkeys.ahk
