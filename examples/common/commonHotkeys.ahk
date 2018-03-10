; common hotkeys

; required includes
#include winlistMenu.ahk
#include clipboardToBash.ahk


;------- groups hotkeys

; +^1 
+^sc002:: GroupActivate Explorer

; +^2 
+^sc003:: GroupActivate "NotepadPP"

; +^3 
+^sc004:: GroupActivate "Chrome"
                         
; +^4                    
+^sc005:: GroupActivate "DevStudio"

; +^5,6 are used in Windows Explorer

; +^7 
+^sc008:: GroupActivate "EnvMgr"

; +^8 
+^sc009:: GroupActivate "PLineClient"


;------- help image & suspend hotkeys

; +^9 qwerty
+^sc00A::DisplayHelpImageToggle()

; +^0 qwerty
#SuspendExempt
+^sc00B::
    Suspend Toggle
    if (A_IsSuspended)
        DisplayHelpImageSuspendOn()
    else 
        DisplayHelpImageSuspendOff()
return

;--------

; Win B
#sc030::clipboardToBash()

; ctrl-menu
^sc15D::OpenWinlistMenu()
