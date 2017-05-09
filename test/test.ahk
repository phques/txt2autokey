; called to handle an extend key
global Mylayer := 0
global MyNbrLayers := 2

doKey(keys, up)
{
    ; if (MyLayer == 0)
        ; k := k1
    ; else
        ; k := k2
    k := keys[Mylayer+1]
    
	SetKeyDelay -1
	if (up)
		Send {Blind}{%k% Up}
	else
		Send {Blind}{%k% DownTemp}
}


;; j => Left
sc039 & sc024::dokey([ "[", "Left"], 0)
sc039 & sc024 up::dokey([ "[", "Left"],  1)

;; l => Right
sc039 & sc026::dokey([ "]", "Right"], 0)
sc039 & sc026 up::dokey([ "]", "Right"], 1)

sc039 & Shift::return
sc039 & Shift Up::Mylayer := Mod(Mylayer+1, MyNbrLayers)

;; h => Space
sc039 & sc023::dokey(["Space", "PgDn"], 0)
sc039 & sc023 up::dokey(["Space", "PgDn"], 1)


;; sp => Space
sc039::dokey(["Space", "Space"], 0)
sc039 up::dokey(["Space", "Space"], 1)

;; +sp => Enter
+sc039::dokey(["Enter", "Enter"], 0)
+sc039 up::dokey(["Enter", "Enter"], 1)
