; PLace #includes and things to add to ahk script here 

; Global variables
; MUST be declared *before* including scripts
global LayoutDir := "%A_ScriptDir%"
global ExtendKey := "CapsLock"
global ImgWidth := 296
global ImgHeight := 112
global HasAltGr := 0
; Define one of the two or none to use xCenter (on 1st monitor)
global CenterOnCurrWindow := 1
; global CenterOnCurrWndMonitor := 1

#include ../../extend.ahk
#include ../../fromPkl/pkl_gui.ahk

;;+^9:: Reload
+^9:: gosub displayHelpImageToggle

+^0::
    Suspend Toggle
    if (A_IsSuspended)
        gosub displayHelpImageSuspendOn
    else 
        gosub displayHelpImageSuspendOff
return
