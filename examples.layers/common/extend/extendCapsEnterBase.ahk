; for LaSalle 'extra wide' home pos:
;      Q  W       P  [
; Caps      D   L      Enter

#include extendDoSend.ahk

SetupExtendCapsEnter(extendKey)
{
    SetExtendKey(extendKey)

    extHK('1', 'F1')
    extHK('2', 'F2')
    extHK('3', 'F3')
    extHK('4', 'F4')
    extHK('5', 'F5')
    extHK('6', 'F6')
    extHK('7', 'F7')
    extHK('8', 'F8')
    extHK('9', 'F9')
    extHK('0', 'F10')
    extHK('-', 'F11')
    extHK('=', 'F12')
               
    extHK('q', 'Control')
    extHK('w', 'Shift'   )
    extHK('e', 'LAlt'   )
    extHK('a', 'Escape')
    ; extHK('r', )
               
    extHK('CapsLock', 'LWin')
    ; extHK('d', 'Shift') ; space-D doesnt work on Microsoft Sculpt Ergonomic
    ; extHK('s', 'Shift') ; space-S doesnt work on my Dell kbd @ work
    
    extHK('f', '!','Esc') ; or with r-w!
               
    extHK('z', '^','z')
    extHK('x', '^','x')
    extHK('c', '^','c')
    extHK('v', '^','v')
    
if (1)
{
    extHK("l", "Left")
    extHK("[", "Right")
    extHK("p", "Up")
    extHK("'", "Down")
    extHK(";", "Home")
    extHK("Enter", "End")
    extHK("0", "PgUp")
    extHK("-", "PgDn")
    
    extHK('k', '^','c') ; copy
    extHK('o', '^','v') ; paste
}
else if (0) 
{
    extHK("l", "Left")
    extHK("[", "Right")
    extHK("p", "Up")
    extHK("'", "Down")
    extHK("o", "Home")
    extHK(";", "End")
} 
else if (0) 
{
    extHK("p", "Left")
    extHK("[", "Right")
    extHK(";", "^","c")  ; copy
    extHK("'", "^","v")  ; paste
    extHK("o", "Up")
    extHK("k", "Down")
    extHK("l", "Home")
    extHK("Enter", "End")
} 

    extHK(']', 'BackSpace')
               
    ; extHK('m', '^','z')
    ; extHK('.', '^','x')
}


