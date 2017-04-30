;;Generated from extend.txt
;; extend key is CapsLock

#include extendDoKey.ahk

;; q => Escape
CapsLock & sc010::dokey("Escape", 0)
CapsLock & sc010 up::dokey("Escape", 1)

;; a => Shift
CapsLock & sc01E::dokey("Shift", 0)
CapsLock & sc01E up::dokey("Shift", 1)

;; s => Alt
CapsLock & sc01F::dokey("Alt", 0)
CapsLock & sc01F up::dokey("Alt", 1)

;; d => Control
CapsLock & sc020::dokey("Control", 0)
CapsLock & sc020 up::dokey("Control", 1)

;; y => PgUp
CapsLock & sc015::dokey("PgUp", 0)
CapsLock & sc015 up::dokey("PgUp", 1)

;; u => Home
CapsLock & sc016::dokey("Home", 0)
CapsLock & sc016 up::dokey("Home", 1)

;; i => Up
CapsLock & sc017::dokey("Up", 0)
CapsLock & sc017 up::dokey("Up", 1)

;; o => End
CapsLock & sc018::dokey("End", 0)
CapsLock & sc018 up::dokey("End", 1)

;; p => Delete
CapsLock & sc019::dokey("Delete", 0)
CapsLock & sc019 up::dokey("Delete", 1)

;; [ => Escape
CapsLock & sc01A::dokey("Escape", 0)
CapsLock & sc01A up::dokey("Escape", 1)

;; h => PgDn
CapsLock & sc023::dokey("PgDn", 0)
CapsLock & sc023 up::dokey("PgDn", 1)

;; j => Left
CapsLock & sc024::dokey("Left", 0)
CapsLock & sc024 up::dokey("Left", 1)

;; k => Down
CapsLock & sc025::dokey("Down", 0)
CapsLock & sc025 up::dokey("Down", 1)

;; l => Right
CapsLock & sc026::dokey("Right", 0)
CapsLock & sc026 up::dokey("Right", 1)

;; ; => Backspace
CapsLock & sc027::dokey("Backspace", 0)
CapsLock & sc027 up::dokey("Backspace", 1)

;; ' => AppsKey
CapsLock & sc028::dokey("AppsKey", 0)
CapsLock & sc028 up::dokey("AppsKey", 1)

;; z => }^{z
CapsLock & sc02C::dokey("}^{z", 0)
CapsLock & sc02C up::dokey("}^{z", 1)

;; x => }^{x
CapsLock & sc02D::dokey("}^{x", 0)
CapsLock & sc02D up::dokey("}^{x", 1)

;; c => }^{c
CapsLock & sc02E::dokey("}^{c", 0)
CapsLock & sc02E up::dokey("}^{c", 1)

;; v => }^{v
CapsLock & sc02F::dokey("}^{v", 0)
CapsLock & sc02F up::dokey("}^{v", 1)

;; m => }^{c
CapsLock & sc032::dokey("}^{c", 0)
CapsLock & sc032 up::dokey("}^{c", 1)

;; , => }^{x
CapsLock & sc033::dokey("}^{x", 0)
CapsLock & sc033 up::dokey("}^{x", 1)

;; . => }^{v
CapsLock & sc034::dokey("}^{v", 0)
CapsLock & sc034 up::dokey("}^{v", 1)

;; / => }^{z
CapsLock & sc035::dokey("}^{z", 0)
CapsLock & sc035 up::dokey("}^{z", 1)

;; sp => Enter
CapsLock & sc039::dokey("Enter", 0)
CapsLock & sc039 up::dokey("Enter", 1)

