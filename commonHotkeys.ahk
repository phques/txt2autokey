; common hotkeys

;------- groups hotkeys

; +^1 
+^sc002:: GroupActivate, NotepadPP

; +^2 
+^sc003:: GroupActivate, DevStudio

; +^3 
+^sc004:: GroupActivate, PLineClient

;-------

; +^4 
+^sc005::Send philippe.quesnel

; +^5 
+^sc006::Send @cgi.com

; +^6 
+^sc007::Send @gmail.com

; +^8 
+^sc009:: gosub clipboardToBash


;------- help image & suspend hotkeys


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

