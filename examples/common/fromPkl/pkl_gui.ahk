
; initial call to enable & display
DisplayHelpImage()
{
	pkl_displayHelpImage(1) ; activate
	pkl_displayHelpImage(0) ; display
}

DisplayHelpImageToggle()
{
	pkl_displayHelpImage( 2 )
}

DisplayHelpImageSuspendOn()
{
	pkl_displayHelpImage( 3 )
}

DisplayHelpImageSuspendOff()
{
	pkl_displayHelpImage( 4 )
}

;--------

pkl_OnDisplayTimer()
{
	pkl_displayHelpImage(0) ; display
}


pkl_displayHelpImage( activate := 0 )
{
	; Parameter:
	; 0 = display, if activated
	;-1 = deactivate
	; 1 = activate
	; 2 = toggle
	; 3 = suspend on
	; 4 = suspend off

	static guiActiveBeforeSuspend := 0
	static guiActive := 0
	static prevFile
	static HelperImage
	static displayOnTop := 0
	static yPosition := -1
	static extendKeyWasDown := 0


	if ( activate == 2 )
		activate := 1 - 2 * guiActive
	if ( activate == 1 ) {
		guiActive := 1
	} else if ( activate == -1 ) {
		guiActive := 0
	} else if ( activate == 3 ) {
		guiActiveBeforeSuspend := guiActive
		activate := -1
		guiActive := 0
	} else if ( activate == 4 ) {
		if ( guiActiveBeforeSuspend == 1 && guiActive != 1) {
			activate := 1
			guiActive := 1
		}
	}
		
	if ( activate == 1 ) {
		if ( yPosition == -1 ) {
			yPosition :=  A_ScreenHeight - ImgHeight - 60
			; IniRead, ImgWidth, %LayoutDir%\layout.ini, global, img_width, 300
			; IniRead, ImgHeight, %LayoutDir%\layout.ini, global, img_height, 100
		}
		Gui, 2:+AlwaysOnTop -Border +ToolWindow
		Gui, 2:margin, 0, 0
		Gui, 2:Add, Pic, xm vHelperImage
		GuiControl,2:, HelperImage, *w%ImgWidth% *h%ImgHeight% %LayoutDir%\state0.png
		Gui, 2:Show, xCenter y%yPosition% AutoSize NA, pklHelperImage
		setTimer, pkl_OnDisplayTimer, 200
	} else if ( activate == -1 ) {
		setTimer, pkl_OnDisplayTimer, Off
		Gui, 2:Destroy
		return
	}
	if ( guiActive == 0 )
		return


	; check if mouse is over the help image
	; and adjust y position of image (move to top or bottom.. toggle)
	MouseGetPos, , , id
	WinGetTitle, title, ahk_id %id%
	if ( title == "pklHelperImage" ) {
		displayOnTop := 1 - displayOnTop
		if ( displayOnTop )
			yPosition := 5
		else
			yPosition := A_ScreenHeight - ImgHeight - 60
		; Gui, 2:Show, xCenter y%yPosition% AutoSize NA, pklHelperImage
	}

	; find current active window and its coords
	id := WinExist("A")
	WinGetPos, x, y, width, height, ahk_id %id%
    currWinCenter := x + (width / 2)

	xpos := 0
	if (CenterOnCurrWndMonitor) {
		; find out on which monitor the window is
		; (could get all monitors info beforehand
		;  but doesnt seem to take CPU (because of timer speed))
		Loop(MonitorGetCount()) {
			if (MonitorGet(A_Index, left, top, right, bottom)) {
				if (currWinCenter >= left and currWinCenter <= right) {
					; found it
					; X center on current monitor
					xpos := ((left + right) / 2) - (ImgWidth / 2)
					break
				}
			}
		}
	} else if (CenterOnCurrWindow) {
		;or X center on current window
		xpos := currWinCenter - (ImgWidth / 2)
	}

	; might want to avoid Show if same coords ..
	if (xpos) {
		Gui, 2:Show, x%xpos% y%yPosition% AutoSize NA, pklHelperImage
	} else {
		Gui, 2:Show, xCenter y%yPosition% AutoSize NA, pklHelperImage
	}
	
	if ( CurrentDeadKeys ) {
		if ( not getKeyState( "Shift" ) ) {
			fileName := deadkey%CurrentDeadKeyNum%
		} else {
			fileName := deadkey%CurrentDeadKeyNum%sh
			if ( not FileExist( LayoutDir . "\" . filename . ".png" ) )
				fileName := deadkey%CurrentDeadKeyNum%
		}
	} else if ( ExtendKey && getKeyState( ExtendKey, "P" ) ) {
		if (!extendKeyWasDown && ExtendKey == "Space")
		{
			; avoid flicker on space bar, skip 1st timer
			extendKeyWasDown := 1
			return
		}
		fileName := "extend"
	} else {
		extendKeyWasDown := 0
		state := 0
		state += 1 * getKeyState( "Shift" )
		; state += 6 * ( HasAltGr * AltGrIsPressed() )
		state += 6 * ( HasAltGr * getKeyState( "RAlt" ) )
		fileName := "state%state%"
	}
	if ( not FileExist( LayoutDir . "\" . fileName . ".png" ) )
		fileName := "state0"
	
	if ( prevFile == fileName )
		return
		
	prevFile := fileName 
	GuiControl,2:, HelperImage, *w%ImgWidth% *h%ImgHeight% %LayoutDir%\%fileName%.png
}

