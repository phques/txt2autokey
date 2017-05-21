#include ../layers.ahk

;----------

CreateLayer(1, 0, 1)
CreateLayer(2, 'RAlt', 1)
CreateLayer(3, 'Space', 0)

testkey := '['

AddMappings(1, testkey, '!')
AddMappings(2, testkey, '@')
AddMappings(3, testkey, '&')

AddMappings(1, 'q w e', 'a s ^v')

return

;----------

; +^9 qwerty
+^sc00A::Reload

; +^0 qwerty
+^sc00B::ExitApp

