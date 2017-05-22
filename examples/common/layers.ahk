; functions to define layers of key mappings (àla AltGr),
; with this you can handle main layer and alt layers directly from code
; no need to use a conversion pgm from text to AHK for main layer etc..
;

; Layers[layerIndex] = layerDef
;   layerDef.index
;   layerDef.accessKey = accessKey
;   layerDef.blockAccessKey = if true, normal press/release of this access key is not output
;   layerDef.mappings = {fromKey : toKey, ...}

global Layers := []
global DefinedHotKeys := {} ; keep track of already defined hotkeys

; currently active layer. 
; a layer becomes current on keydown of its layer access key
; layer[1] is normal/main layer
global CurrentLayer := {}
global LastKeyWasLayerAccess := 0 ;; true if last key was a layer access key


;---------

; create a new empty layer definition
; creates a hotkey for it on layerAccessKey
CreateLayer(layerIndex, layerAccessKey := 0, blockAccessKey := 0)
{
	; create / save layer def
	layerDef := {}
	layerDef.index := layerIndex
	layerDef.accessKey := layerAccessKey
	layerDef.blockAccessKey := blockAccessKey
	layerDef.mappings := {}
	
	Layers[layerIndex] := layerDef
	
	; layer 1 is main layer, make it active
	if (layerIndex == 1) {
		; no hotkey for main layer
		CurrentLayer := layerDef
	}
	else {
		; create hotkey for layer access key
		; convert to scandcode format sc000
		sc := GetKeySC(layerAccessKey)
		hotkeyName := Format("sc{:03x}", sc)

		; create function object with params that hotkey will call 
		fnDn := Func("onLayerAccessKey").Bind(layerIndex, 0)
		fnUp := Func("onLayerAccessKey").Bind(layerIndex, 1)

		; create hotKey
		HotKey %hotkeyName%, %fnDn%
		HotKey %hotkeyName% up, %fnUp%
	}
}

;----------

; add new key mappings for a layer
; when 'fromKey' is hit on this layer, will output 'toKey'
; _from/_to are space separated
; Creates a hotkey foreach _from if not already defined
AddMappings(layerIndex, _from, _to)
{
	; get layer def
	layerDef := layers[layerIndex]
	if (!layerDef) {
		MsgBox "AddMappings, layer '%layerIndex%' does not exist"
		ExitApp
	}

	; trim pre/post spaces and compress multi spaces into one
	from := Trim(_from)
	from := RegExReplace(from, "\s{2,}", " ")

	to := Trim(_to)
	to := RegExReplace(to, "\s{2,}", " ")

	; split from / to into into array (separ = space)
	froms := StrSplit(from, A_Space)
	tos := StrSplit(to, A_Space)
	
	if (froms.Length != tos.Length) 
	{
		MsgBox % Format("AddMappings, From/to not same length {} {}!`n{} `n{}"
						, froms.Length, tos.Length
						, _from, _to, )
						; , SubStr(_from, 1, 16), SubStr(_to, 1, 16))
		ExitApp
	}

	; loop on froms / tos, create mappings in layer
	Loop froms.Length
	{
		f := froms[A_Index]
		t := tos[A_Index]
		
		; create hotkey for 'from' key if required
		hotkeyName := createHotkey(f)
		
		; save this mapping in layer
		; use hotkeyname so we can easily find it when called
		layerDef.mappings[hotkeyName] := t
	}
}

;--------

; create a hotkey for 'key', to call onLayerKey
; returns hotkeyName '*sc029'
createHotkey(key_)
{
	; separate out any prefix modifiers (+! etc..)
	mods := "*"
	key := key_
	foundPos := RegExMatch(key_, "^([#!+^<>]+)(.{1,})", match)
	if (foundPos) {
		; ound prefix modifiers (shift,ctrl etc) in outputkey
		; separate them
		mods .= match[1]
		key := match[2]
	}

	; convert to scandcode format sc000, with mods prefixed *+sc029
	sc := GetKeySC(key)
	hotkeyName := Format("{}sc{:03x}", mods, sc)

	; we define the hotkey only once, for al layers
	if (!DefinedHotKeys[hotkeyName]) 
	{
		; create function object with params that hotkey will call 
		fn := Func("onLayerKey")

		; create hotKey
		HotKey %hotkeyName%, %fn%
		HotKey %hotkeyName% up, %fn%
		
		; remember we created this
		DefinedHotKeys[hotkeyName] := 1
	} 
	
	return hotkeyName
}

;--------

; called by a hotkey to handle a key press/release 
onLayerKey()
{
	if (!CurrentLayer || !CurrentLayer.mappings)
		return

	; get pressed hotkey 'name', ie 'sc029', '+sc029 up' etc
	key := A_ThisHotkey
	up := 0

	; if this is the key release, name will end in " up"
	; strip " up" from key name & set up flag
	if (InStr(key, " up")) {
		key := SubStr(key, 1, -3)
		up := 1
	}
	

	; last key is not a layer access key anymore
	LastKeyWasLayerAccess := 0
		
	; get destination/ouput/mapped key for this layer key
    outputKey := CurrentLayer.mappings[key]
	accessKey := CurrentLayer.accessKey

    if (Strlen(outputKey) != 0) {
        
		;#PQ TODO, do this in pre-processing ?
        ; modifiers need to be *before* the {}, ie ^{v}  not {^v}
		; split prefix modifiers and actual key from outputkey
		;  (supports cases like +^ => Shift ^)
        mods := ""
		foundPos := RegExMatch(outputKey, "^([#!+^<>]+)(.{1,})", match)
		if (foundPos) {
			; ound prefix modifiers (shift,ctrl etc) in outputkey
			; separate them
			mods := match[1]
			outputKey := match[2]
		}

        if (up)
            toSend := "{%outputKey% Up}"
        else
            toSend := "{%outputKey% DownTemp}"
        
        SetKeyDelay -1
		
		;; Special handling for Alt, cant use Send Blind
		; filter out the Alt, but manually pass through Shift / Ctrl
		if (accessKey == "LAlt" || accessKey == "RAlt" || accessKey == "Alt") {
			; add modifiers for shift / control if they are currently pressed
			; might come into conflict with %mods% from key def though !?
			if (GetKeyState("Shift"))
				mods .= "+"
				
			if (GetKeyState("Ctrl"))
				mods .= "^"
		
			Send %mods%%toSend%
		}
		else {
			; not Alt access key / hotkey prefix, can use Send Blind
			Send {Blind}%mods%%toSend%
		}
    }
	else {
		;MsgBox "cannot find key %key% on layer %CurrentLayer.index%"
	}
	
}

;--------

; called by a hotkey to handle a key press/release of a layer access key
onLayerAccessKey(layerIndex, up)
{
	; already accessing a layer, skip if different
	;; (might use key combos for layer access in the future?)
	if (LastKeyWasLayerAccess && CurrentLayer && CurrentLayer.index != layerIndex)
		return
		
	; On access key up, reset current layer to main &
	; reset LastKeyWasLayerAccess
	if (up) {
		; no key was hit after this layer access key was released, 
		; this is just a press/release of it, send it if so configured
		if (LastKeyWasLayerAccess && !CurrentLayer.blockAccessKey) {
			Send {Blind}{%CurrentLayer.accessKey%}
		}
		
		; reset to main layer
		CurrentLayer := Layers[1]
		LastKeyWasLayerAccess := 0
	}
	else {
		; layer access key down
		; select layer
		CurrentLayer := Layers[layerIndex]
		LastKeyWasLayerAccess := 1
	}
}
