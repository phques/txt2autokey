global layerKeys 

layerKeys["w"] := "Right"
layerKeys["q"] := "^v"
layerKeys["e"] := "@"

return


;; space+q 
sc039 & sc010::doLayerKey("q", 0)
sc039 & sc010 up::doLayerKey("q", 1)

;; space+w
sc039 & sc011::doLayerKey("w", 0)
sc039 & sc011 up::doLayerKey("w", 1)

;; space+e
sc039 & sc012::doLayerKey("e", 0)
sc039 & sc012 up::doLayerKey("e", 1)

;; Space => Space ! required to be able to use single Space key as Space
sc039::Space
 

 