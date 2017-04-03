; PLace #includes and things to add to ahk script here 

; Global variables
; MUST be declared before including scripts
global LayoutDir := "%A_ScriptDir%"
global ExtendKey := "CapsLock"
global ImgWidth := 296
global ImgHeight := 108
global HasAltGr := 1 ;; ok not really, but images are there ;-)

#include ../../extend.ahk
#include ../../fromPkl/pkl_gui.ahk

; +^9 qwerty
+^sc00A:: gosub displayHelpImageToggle

; +^0 qwerty
+^sc00B:: Suspend Toggle
