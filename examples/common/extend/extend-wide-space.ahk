;;Generated from extend-wide-space.txt
;; extend key is sc039

#include extendDoKey.ahk

;; q => Escape
sc039 & sc010::dokey("Escape", 0)
sc039 & sc010 up::dokey("Escape", 1)

;; s => Shift
sc039 & sc01F::dokey("Shift", 0)
sc039 & sc01F up::dokey("Shift", 1)

;; f => Control
sc039 & sc021::dokey("Control", 0)
sc039 & sc021 up::dokey("Control", 1)

;; u => PgUp
sc039 & sc016::dokey("PgUp", 0)
sc039 & sc016 up::dokey("PgUp", 1)

;; i => Home
sc039 & sc017::dokey("Home", 0)
sc039 & sc017 up::dokey("Home", 1)

;; o => Up
sc039 & sc018::dokey("Up", 0)
sc039 & sc018 up::dokey("Up", 1)

;; p => End
sc039 & sc019::dokey("End", 0)
sc039 & sc019 up::dokey("End", 1)

;; [ => Delete
sc039 & sc01A::dokey("Delete", 0)
sc039 & sc01A up::dokey("Delete", 1)

;; ] => Escape
sc039 & sc01B::dokey("Escape", 0)
sc039 & sc01B up::dokey("Escape", 1)

;; j => PgDn
sc039 & sc024::dokey("PgDn", 0)
sc039 & sc024 up::dokey("PgDn", 1)

;; k => Left
sc039 & sc025::dokey("Left", 0)
sc039 & sc025 up::dokey("Left", 1)

;; l => Down
sc039 & sc026::dokey("Down", 0)
sc039 & sc026 up::dokey("Down", 1)

;; ; => Right
sc039 & sc027::dokey("Right", 0)
sc039 & sc027 up::dokey("Right", 1)

;; ' => Backspace
sc039 & sc028::dokey("Backspace", 0)
sc039 & sc028 up::dokey("Backspace", 1)

;; z => }^{z
sc039 & sc02C::dokey("}^{z", 0)
sc039 & sc02C up::dokey("}^{z", 1)

;; x => }^{x
sc039 & sc02D::dokey("}^{x", 0)
sc039 & sc02D up::dokey("}^{x", 1)

;; c => }^{c
sc039 & sc02E::dokey("}^{c", 0)
sc039 & sc02E up::dokey("}^{c", 1)

;; v => }^{v
sc039 & sc02F::dokey("}^{v", 0)
sc039 & sc02F up::dokey("}^{v", 1)

;; m => }^{z
sc039 & sc032::dokey("}^{z", 0)
sc039 & sc032 up::dokey("}^{z", 1)

;; , => }^{c
sc039 & sc033::dokey("}^{c", 0)
sc039 & sc033 up::dokey("}^{c", 1)

;; . => }^{x
sc039 & sc034::dokey("}^{x", 0)
sc039 & sc034 up::dokey("}^{x", 1)

;; / => }^{v
sc039 & sc035::dokey("}^{v", 0)
sc039 & sc035 up::dokey("}^{v", 1)

;; LShift => Space
sc039 & sc02A::dokey("Space", 0)
sc039 & sc02A up::dokey("Space", 1)

;;space => space
sc039::dokey("Space", 0)
sc039 up::dokey("Space", 1)
