; PLace #includes and things to add to ahk script here 

; Global variables
; MUST be declared before including scripts
global LayoutDir := "%A_ScriptDir%"
global ExtendKey := "CapsLock"
global ImgWidth := 296
global ImgHeight := 112
global HasAltGr := 0

#include ../../extend.ahk
#include ../../fromPkl/pkl_gui.ahk


+^0:: Suspend Toggle
;;+^9:: Reload
+^9:: gosub displayHelpImageToggle
