;;Generated from extendSpace.txt
;; extend key is sc039

#include extendDoKey.ahk

;; q => Escape
sc039 & sc010::dokey("Escape", 0)
sc039 & sc010 up::dokey("Escape", 1)

;; w => }^{a
sc039 & sc011::dokey("}^{a", 0)
sc039 & sc011 up::dokey("}^{a", 1)

;; e => }^{s
sc039 & sc012::dokey("}^{s", 0)
sc039 & sc012 up::dokey("}^{s", 1)

;; r => }^{w
sc039 & sc013::dokey("}^{w", 0)
sc039 & sc013 up::dokey("}^{w", 1)

;; s => Control
sc039 & sc01F::dokey("Control", 0)
sc039 & sc01F up::dokey("Control", 1)

;; d => Alt
sc039 & sc020::dokey("Alt", 0)
sc039 & sc020 up::dokey("Alt", 1)

;; f => Shift
sc039 & sc021::dokey("Shift", 0)
sc039 & sc021 up::dokey("Shift", 1)

;; y => PgUp
sc039 & sc015::dokey("PgUp", 0)
sc039 & sc015 up::dokey("PgUp", 1)

;; u => Home
sc039 & sc016::dokey("Home", 0)
sc039 & sc016 up::dokey("Home", 1)

;; i => Up
sc039 & sc017::dokey("Up", 0)
sc039 & sc017 up::dokey("Up", 1)

;; o => End
sc039 & sc018::dokey("End", 0)
sc039 & sc018 up::dokey("End", 1)

;; p => Delete
sc039 & sc019::dokey("Delete", 0)
sc039 & sc019 up::dokey("Delete", 1)

;; [ => Escape
sc039 & sc01A::dokey("Escape", 0)
sc039 & sc01A up::dokey("Escape", 1)

;; h => PgDn
sc039 & sc023::dokey("PgDn", 0)
sc039 & sc023 up::dokey("PgDn", 1)

;; j => Left
sc039 & sc024::dokey("Left", 0)
sc039 & sc024 up::dokey("Left", 1)

;; k => Down
sc039 & sc025::dokey("Down", 0)
sc039 & sc025 up::dokey("Down", 1)

;; l => Right
sc039 & sc026::dokey("Right", 0)
sc039 & sc026 up::dokey("Right", 1)

;; ; => Backspace
sc039 & sc027::dokey("Backspace", 0)
sc039 & sc027 up::dokey("Backspace", 1)

;; ' => AppsKey
sc039 & sc028::dokey("AppsKey", 0)
sc039 & sc028 up::dokey("AppsKey", 1)

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

;; m => }^{c
sc039 & sc032::dokey("}^{c", 0)
sc039 & sc032 up::dokey("}^{c", 1)

;; , => }^{x
sc039 & sc033::dokey("}^{x", 0)
sc039 & sc033 up::dokey("}^{x", 1)

;; . => }^{v
sc039 & sc034::dokey("}^{v", 0)
sc039 & sc034 up::dokey("}^{v", 1)

;; / => }^{z
sc039 & sc035::dokey("}^{z", 0)
sc039 & sc035 up::dokey("}^{z", 1)

;; sp => Space
sc039::dokey("Space", 0)
sc039 up::dokey("Space", 1)

