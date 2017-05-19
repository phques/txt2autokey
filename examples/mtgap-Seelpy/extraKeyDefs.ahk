; Place extra hotkey definitions here

; re-enable Space as a normal key !
sc039::dokey2("Space", 0)
sc039 up::dokey2("Space", 1)

;; shift space => Enter
+sc039::dokey2("Enter", 0)
+sc039 up::dokey2("Enter", 1)
