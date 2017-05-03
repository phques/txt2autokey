; PLace #includes and things to add to ahk script here 

; Global variables
; MUST be declared *before* including scripts
global LayoutDir := "%A_ScriptDir%"
global ExtendKey := ""
global ImgWidth := 296
global ImgHeight := 108
global HasAltGr := 1 
; Define one of the two or none to use xCenter (on 1st monitor)
; global CenterOnCurrWindow := 1
global CenterOnCurrWndMonitor := 1

#include ../../../groups.ahk

#include ../../../altGr.ahk
#include ../../../extendlalt.ahk

#include ../../../clipboardToBash.ahk
#include ../../../fromPkl/pkl_gui.ahk

#include ../../../commonHotkeys.ahk

return