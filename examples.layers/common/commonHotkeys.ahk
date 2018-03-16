; common hotkeys

; required includes
#include winlistMenu.ahk
#include clipboardToBash.ahk

;------- help image & suspend hotkeys

; +^9 qwerty
;LAlt & RShift::DisplayHelpImageToggle()
LAlt & RShift::reload

; +^0 qwerty
#SuspendExempt
LAlt & RControl::
    Suspend Toggle
    if (A_IsSuspended)
        DisplayHelpImageSuspendOn()
    else 
        DisplayHelpImageSuspendOff()
return

;--------

; Win-Ctrl X qwerty
#^sc02D:: ExitApp

; Win B
#sc030::clipboardToBash()

; ctrl-menu
^sc15D::OpenWinlistMenu()

; Win-Delete to close the current window
#Del::WinClose "A"
