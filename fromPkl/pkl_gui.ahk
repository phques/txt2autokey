
displayHelpImage:
	pkl_displayHelpImage()
return

displayHelpImageToggle:
	pkl_displayHelpImage( 2 )
return



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
	; PQ, set these as global var 
	; static imgWidth
	; static imgHeight
	
	; static layoutDir = 0
	; static hasAltGr
	; static extendKey

	
	; if ( LayoutDir == 0 )
	; {
		; LayoutDir := getLayoutInfo( "dir" )
		; HasAltGr  := getLayoutInfo( "HasAltGr" )
		; ExtendKey := getLayoutInfo( "ExtendKey" )
	; }
	
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
		; Menu, tray, Check, % getPklInfo( "DisplayHelpImageMenuName" )
		if ( yPosition == -1 ) {
			yPosition := A_ScreenHeight - 160
			; IniRead, ImgWidth, %LayoutDir%\layout.ini, global, img_width, 300
			; IniRead, ImgHeight, %LayoutDir%\layout.ini, global, img_height, 100
		}
		Gui, 2:+AlwaysOnTop -Border +ToolWindow
		Gui, 2:margin, 0, 0
		Gui, 2:Add, Pic, xm vHelperImage
		GuiControl,2:, HelperImage, *w%ImgWidth% *h%ImgHeight% %LayoutDir%\state0.png
		Gui, 2:Show, xCenter y%yPosition% AutoSize NA, pklHelperImage
		setTimer, displayHelpImage, 200
	} else if ( activate == -1 ) {
		; Menu, tray, UnCheck, % getPklInfo( "DisplayHelpImageMenuName" )
		setTimer, displayHelpImage, Off
		Gui, 2:Destroy
		return
	}
	if ( guiActive == 0 )
		return

	MouseGetPos, , , id
	WinGetTitle, title, ahk_id %id%
	if ( title == "pklHelperImage" ) {
		displayOnTop := 1 - displayOnTop
		if ( displayOnTop )
			yPosition := 5
		else
			yPosition := A_ScreenHeight - ImgHeight - 60
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
		fileName := extend
	} else {
		state := 0
		state += 1 * getKeyState( "Shift" )
		; state += 6 * ( HasAltGr * AltGrIsPressed() )
		state += 6 * ( HasAltGr * getKeyState( "RAlt" ) )
		fileName := "state%state%"
		;; debug
		; ListVars
		; Pause
	}
	if ( not FileExist( LayoutDir . "\" . fileName . ".png" ) )
		fileName := state0
	
	if ( prevFile == fileName )
		return
		
	prevFile := fileName 
	GuiControl,2:, HelperImage, *w%ImgWidth% *h%ImgHeight% %LayoutDir%\%fileName%.png
}

