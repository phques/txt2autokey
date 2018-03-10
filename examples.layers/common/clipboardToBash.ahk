
; change "D:\Users\Philippe\code\toto\tt.ahk" in clipboard 
; to "/mnt/d/Users/Philippe/code/toto/tt.ahk"

clipboardToBash()
{
	; ('clipboard' var converts copied file to filename text)
	clip := clipboard
	
	if (RegExMatch(clip, "^[a-zA-Z]:")) {
		s2 := StrReplace(clip, "`\", "/")
		head := SubStr(s2, 1, 1)
		tail := SubStr(s2, 4)
		head := StrLower(head)

		clipboard := "'/mnt/" head "/" tail "'"
		MsgBox(clipboard)
	} else {
		MsgBox("Clipboard contents does not begin with 'x:'")
	}
}



