; called to handle an extend key, when extend key=Alt
; does not use Send {Blind}
doKey(k, up)
{
	static shiftDown := 0
	static controlDown := 0
	static altDown := 0
	
	SetKeyDelay -1
	
	; set shift flag on shift key
	if (k == "Shift") {
		if (up)
			shiftDown := 0
		else
			shiftDown := 1
		return
	}
	
	; set control flag on control key
	if (k == "Control" || k == "Ctrl") {
		if (up)
			controlDown := 0
		else
			controlDown := 1
		return
	}
	
	; set alt flag on alt key
	if (k == "Alt") {
		if (up)
			altDown := 0
		else
			altDown := 1
		return
	}
	
	; set prefix: shift / control
	prefix := ""
	if (GetKeyState("Shift") || shiftDown)
		prefix .= "+"
	if (GetKeyState("Ctrl") || controlDown)
		prefix .= "^"
	if (altDown)
		prefix .= "!"
	
	; do send
	if (up)
		Send prefix '{' k ' up}'
	else
		Send prefix '{' k ' DownTemp}'
}