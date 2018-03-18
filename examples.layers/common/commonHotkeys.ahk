; common hotkeys

; required includes
#include winlistMenu.ahk
#include clipboardToBash.ahk

;------- help image & suspend hotkeys

; suspend / resume hotkeys (help image toggles at same time)
#SuspendExempt
LAlt & RControl::
    Suspend Toggle
    if (A_IsSuspended)
        DisplayHelpImageSuspendOn()
    else 
        DisplayHelpImageSuspendOff()
return


; toggle help image 
LAlt & AppsKey::DisplayHelpImageToggle()
;LAlt & AppsKey::reload

;--------

; Win-Ctrl X qwerty
#^sc02D:: ExitApp

; Win B
#sc030::clipboardToBash()

; ctrl-menu
^sc15D::OpenWinlistMenu()

; Win-Delete to close the current window
#Del::WinClose "A"
