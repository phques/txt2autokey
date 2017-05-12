; common hotkeys

;------- groups hotkeys

; +^1 
+^sc002:: GroupActivate, NotepadPP

; +^2 
+^sc003:: GroupActivate, DevStudio

; +^3 
+^sc004:: GroupActivate, EnvMgr

; +^4 
+^sc005:: GroupActivate, Explorer

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
