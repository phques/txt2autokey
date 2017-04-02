

;*h::Send {Blind}{U+0077}


; +h::
; SetKeyDelay -1   ; If the destination key is a mouse button, SetMouseDelay is used instead.
; Send {/ DownTemp}  ; DownTemp is like Down except that other Send commands in the script won't assume "b" should stay down during their Send.
; return

; +h up::
; SetKeyDelay -1  ; See note below for why press-duration is not specified with either of these SetKeyDelays.
; Send {/ Up}
; return

+h:: Send {/}
h::<

?::.
/::k

; SetKeyDelay -1   ; If the destination key is a mouse button, SetMouseDelay is used instead.
; Send {Blind}{; DownTemp}  ; DownTemp is like Down except that other Send commands in the script won't assume "b" should stay down during their Send.
; return

; h up::
; SetKeyDelay -1  ; See note below for why press-duration is not specified with either of these SetKeyDelays.
; Send {Blind}{; Up}
; return

 
+^0:: Suspend Toggle
+^9:: Reload
