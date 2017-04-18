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

#include ../../groups.ahk

#include ../../altGrWide.ahk
#include ../../extend-wide.ahk

#include ../../clipboardToBash.ahk
#include ../../fromPkl/pkl_gui.ahk

return

;------- groups hotkeys

; +^1 qwerty
+^sc002:: GroupActivate, NotepadPP

; +^2 qwerty
+^sc003:: GroupActivate, DevStudio

; +^3 qwerty
+^sc004:: GroupActivate, PLineClient


;------- help image & suspend hotkeys

; +^8 qwerty
+^sc009:: gosub clipboardToBash

; +^9 qwerty
+^sc00A:: gosub displayHelpImageToggle

; +^0 qwerty
+^sc00B::
    Suspend Toggle
    if (A_IsSuspended)
        gosub displayHelpImageSuspendOn
    else 
        gosub displayHelpImageSuspendOff
return


