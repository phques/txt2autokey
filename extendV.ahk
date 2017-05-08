;;Generated from extendV.txt
;; extend key is sc02F

#include extendDoKey.ahk

;; q => Escape
sc02F & sc010::dokey("Escape", 0)
sc02F & sc010 up::dokey("Escape", 1)

;; w => Shift
sc02F & sc011::dokey("Shift", 0)
sc02F & sc011 up::dokey("Shift", 1)

;; e => Alt
sc02F & sc012::dokey("Alt", 0)
sc02F & sc012 up::dokey("Alt", 1)

;; r => Control
sc02F & sc013::dokey("Control", 0)
sc02F & sc013 up::dokey("Control", 1)

;; y => PgUp
sc02F & sc015::dokey("PgUp", 0)
sc02F & sc015 up::dokey("PgUp", 1)

;; u => Home
sc02F & sc016::dokey("Home", 0)
sc02F & sc016 up::dokey("Home", 1)

;; i => Up
sc02F & sc017::dokey("Up", 0)
sc02F & sc017 up::dokey("Up", 1)

;; o => End
sc02F & sc018::dokey("End", 0)
sc02F & sc018 up::dokey("End", 1)

;; p => Delete
sc02F & sc019::dokey("Delete", 0)
sc02F & sc019 up::dokey("Delete", 1)

;; [ => Escape
sc02F & sc01A::dokey("Escape", 0)
sc02F & sc01A up::dokey("Escape", 1)

;; h => PgDn
sc02F & sc023::dokey("PgDn", 0)
sc02F & sc023 up::dokey("PgDn", 1)

;; j => Left
sc02F & sc024::dokey("Left", 0)
sc02F & sc024 up::dokey("Left", 1)

;; k => Down
sc02F & sc025::dokey("Down", 0)
sc02F & sc025 up::dokey("Down", 1)

;; l => Right
sc02F & sc026::dokey("Right", 0)
sc02F & sc026 up::dokey("Right", 1)

;; ; => Backspace
sc02F & sc027::dokey("Backspace", 0)
sc02F & sc027 up::dokey("Backspace", 1)

;; ' => AppsKey
sc02F & sc028::dokey("AppsKey", 0)
sc02F & sc028 up::dokey("AppsKey", 1)

;; m => }^{c
sc02F & sc032::dokey("}^{c", 0)
sc02F & sc032 up::dokey("}^{c", 1)

;; , => }^{x
sc02F & sc033::dokey("}^{x", 0)
sc02F & sc033 up::dokey("}^{x", 1)

;; . => }^{v
sc02F & sc034::dokey("}^{v", 0)
sc02F & sc034 up::dokey("}^{v", 1)

;; / => }^{z
sc02F & sc035::dokey("}^{z", 0)
sc02F & sc035 up::dokey("}^{z", 1)

;; sp => Enter
sc02F & sc039::dokey("Enter", 0)
sc02F & sc039 up::dokey("Enter", 1)

