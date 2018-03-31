
#include extendWide2Base.ahk

SetupExtend2('Space')

; this one will autorepeat Space, since space itself will not (dual mode cant)
extHK('b', 'Space') 

; space press/release outputs space (dual mode)
extHKitself('', 'Space')

