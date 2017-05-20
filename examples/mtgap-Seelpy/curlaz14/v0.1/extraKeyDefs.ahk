; Place extra hotkey definitions here

; we use this to output some chars on special keys 
; (just a split  of extendDoKey, was clashing with doKey of extendLAlt)
doKeyUp(k)
{
	SetKeyDelay -1
	Send {Blind}{%k% Up}
}

doKeyDn(k)
{
	SetKeyDelay -1
	Send {Blind}{%k% DownTemp}
}


; re-enable Space as a normal key !
sc039::dokeyDn("Space")
sc039 up::dokeyUp("Space")

;; shift space => Enter
;+sc039::dokeyDn("Enter")
;+sc039 up::dokeyUp("Enter")
