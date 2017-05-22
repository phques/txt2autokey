#include ../layers.ahk

;----------

CreateLayer(1)

AddMappings(1, '+q', 'é')
AddMappings(1, 'q w', 'z y')


return

;----------

; +sc011::é
; sc011::a


; +^8 qwerty
+^sc009::Reload

; +^9 qwerty
+^sc00A::Suspend

; +^0 qwerty
+^sc00B::listhotkeys
;ExitApp


/*



*/