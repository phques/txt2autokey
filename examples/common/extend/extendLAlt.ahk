;;Generated from extendLAlt.txt
;; extend key is LAlt

;; # WARNING, using Alt as an extend key usually does not work with Send {Blind}
;; # Send Blind will not be used

#include extendDoKeyAlt.ahk

;; q => Escape
LAlt & sc010::dokey("Escape", 0)
LAlt & sc010 up::dokey("Escape", 1)

;; a => Shift
LAlt & sc01E::dokey("Shift", 0)
LAlt & sc01E up::dokey("Shift", 1)

;; s => Alt
LAlt & sc01F::dokey("Alt", 0)
LAlt & sc01F up::dokey("Alt", 1)

;; d => Control
LAlt & sc020::dokey("Control", 0)
LAlt & sc020 up::dokey("Control", 1)

;; y => PgUp
LAlt & sc015::dokey("PgUp", 0)
LAlt & sc015 up::dokey("PgUp", 1)

;; u => Home
LAlt & sc016::dokey("Home", 0)
LAlt & sc016 up::dokey("Home", 1)

;; i => Up
LAlt & sc017::dokey("Up", 0)
LAlt & sc017 up::dokey("Up", 1)

;; o => End
LAlt & sc018::dokey("End", 0)
LAlt & sc018 up::dokey("End", 1)

;; p => Delete
LAlt & sc019::dokey("Delete", 0)
LAlt & sc019 up::dokey("Delete", 1)

;; [ => Escape
LAlt & sc01A::dokey("Escape", 0)
LAlt & sc01A up::dokey("Escape", 1)

;; h => PgDn
LAlt & sc023::dokey("PgDn", 0)
LAlt & sc023 up::dokey("PgDn", 1)

;; j => Left
LAlt & sc024::dokey("Left", 0)
LAlt & sc024 up::dokey("Left", 1)

;; k => Down
LAlt & sc025::dokey("Down", 0)
LAlt & sc025 up::dokey("Down", 1)

;; l => Right
LAlt & sc026::dokey("Right", 0)
LAlt & sc026 up::dokey("Right", 1)

;; ; => Backspace
LAlt & sc027::dokey("Backspace", 0)
LAlt & sc027 up::dokey("Backspace", 1)

;; ' => AppsKey
LAlt & sc028::dokey("AppsKey", 0)
LAlt & sc028 up::dokey("AppsKey", 1)

;; z => }^{z
LAlt & sc02C::dokey("}^{z", 0)
LAlt & sc02C up::dokey("}^{z", 1)

;; x => }^{x
LAlt & sc02D::dokey("}^{x", 0)
LAlt & sc02D up::dokey("}^{x", 1)

;; c => }^{c
LAlt & sc02E::dokey("}^{c", 0)
LAlt & sc02E up::dokey("}^{c", 1)

;; v => }^{v
LAlt & sc02F::dokey("}^{v", 0)
LAlt & sc02F up::dokey("}^{v", 1)

;; m => }^{c
LAlt & sc032::dokey("}^{c", 0)
LAlt & sc032 up::dokey("}^{c", 1)

;; , => }^{x
LAlt & sc033::dokey("}^{x", 0)
LAlt & sc033 up::dokey("}^{x", 1)

;; . => }^{v
LAlt & sc034::dokey("}^{v", 0)
LAlt & sc034 up::dokey("}^{v", 1)

;; / => }^{z
LAlt & sc035::dokey("}^{z", 0)
LAlt & sc035 up::dokey("}^{z", 1)

;; sp => Enter
LAlt & sc039::dokey("Enter", 0)
LAlt & sc039 up::dokey("Enter", 1)

