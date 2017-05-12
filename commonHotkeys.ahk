; common hotkeys

;------- groups hotkeys

; +^1 
+^sc002:: GroupActivate, Explorer

; +^2 
+^sc003:: GroupActivate, NotepadPP

; +^3 
+^sc004:: GroupActivate, DevStudio

; +^4 
+^sc005:: GroupActivate, EnvMgr

; +^5,6 are used in Windows Explorer

; +^7 
+^sc008:: GroupActivate, PLineClient

; +^8 
+^sc009:: Send philippe.quesnel


;------- help image & suspend hotkeys

; +^9 qwerty
+^sc00A::DisplayHelpImageToggle()

; +^0 qwerty
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
