; functions to define layers of key mappings (àla AltGr),
; with this you can handle main layer and alt layers directly from code
; no need to use a conversion pgm from text to AHK for main layer etc..
;

; Layers[layerIndex] = layerDef
;   layerDef.index
;   layerDef.accessKey = accessKey
;   layerDef.blockAccessKey = if true, normal press/release of this access key is not output
;   layerDef.mappings = {fromKey : toKey, ...}
;   layerDef.mappingsSh = {fromKey : toKey, ...}

global Layers := []
global DefinedHotKeys := {} ; keep track of already defined hotkeys

; currently active layer. 
; a layer becomes current on keydown of its layer access key
; layer[1] is normal/main layer
global CurrentLayer := {}
global LastKeyWasLayerAccess := 0 ;; true if last key was a layer access key

; If we remap a key to be shift, GetKeyState(Shift) returns false sometimes after 
; another has been pressed. So we will check for actual fake shift key also
; use SetShiftKey() to set
global ShiftKey1 := 0
global ShiftKey2 := 0

;---------

SetShiftKey(no, key)
{
	; convert to scan code sc999 format
	sc := GetKeySC(key)
	sc := Format("sc{:03x}", sc)

	if (no == 1)
		ShiftKey1 := sc
		
	if (no == 2)
		ShiftKey2 := sc
}

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
	layerDef.mappingsSh := {} ;; shifted layer
	
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
AddMappings(layerIndex, shiftedLayer, _from, _to)
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
		
		if (f == 'SP')
			f := 'Space'
		
		if (t == 'SP')
			t := 'Space'
			
		splitFrom := splitModsAndKey(f)
		splitTo := splitModsAndKey(t)

		; set flag indicating if the char to output is shifted (ie ! is Shift-1)
		if (InStr('~!@#$`%^&*()_+{}|:"<>?', splitTo.key))
			splitTo.isShifted := 1
		
		; create hotkey for 'from' key if required
		; note we DONT use modifiers, that's what layers are for !
		createHotkey(splitFrom.key)
		
		; save this mapping in layer
		; use hotkeyname so we can easily find it when called
		if (shiftedLayer)
			layerDef.mappingsSh[splitFrom.key] := splitTo
		else
			layerDef.mappings[splitFrom.key] := splitTo
	}
}

;--------

; '^Z' => '^', 'Z'
; return object, .mods / .key
splitModsAndKey(key)
{
	obj := {}
	obj.mods := ""
	obj.key := key
	foundPos := RegExMatch(key, "^([#!+^<>]+)(.{1,})", match)
	if (foundPos) {
		; found prefix modifiers (shift: +,ctrl: ^ etc) in key
		; separate them
		obj.mods := match[1]
		obj.key := match[2]
	}
	return obj
}


;--------

; create a hotkey for 'key', to call onLayerKey
createHotkey(key)
{
	; convert to scandcode format sc000, with mods prefixed *+sc029
	sc := GetKeySC(key)
	sc := Format("sc{:03x}", sc)

	; we define the hotkey only once, for al layers
	if (!DefinedHotKeys[sc]) 
	{
		; create function object with params that hotkey will call 
		fnDn := Func("onLayerKey").Bind(key, 0)
		fnUp := Func("onLayerKey").Bind(key, 1)

		; create hotKey
		; add '*' to hotkeyname (hotkey will work even when other mods are pressed)
		hotkeyName := '*' . sc
		HotKey %hotkeyName%, %fnDn%
		HotKey %hotkeyName% up, %fnUp%
		
		; remember we created this
		DefinedHotKeys[sc] := 1
	} 
}

;--------

simulateSendBlind(mods, toSend, pressedModToFilterOut)
{

	; add modifiers for shift / control if they are currently pressed
	; might come into conflict with %mods% from key def though !?
	if (pressedModToFilterOut != '+' &&  GetKeyState("Shift"))
		mods .= "+"
		
	if (pressedModToFilterOut != '^' &&   GetKeyState("Ctrl"))
		mods .= "^"

	if (pressedModToFilterOut != '!' &&   GetKeyState("Alt"))
		mods .= "!"

	Send %mods%%toSend%
}


; called by a hotkey to handle a key press/release 
onLayerKey(key, up)
{
	if (!CurrentLayer)
		return

	; last key is not a layer access key anymore
	LastKeyWasLayerAccess := 0
		
	; get destination/ouput/mapped key for this layer key
	accessKey := CurrentLayer.accessKey
	
	shiftDown := 0
	if (GetKeyState("Shift")) 
		shiftDown :=  1
	else if (ShiftKey1 && GetKeyState(ShiftKey1, 'P'))
		shiftDown :=  1
	else if (ShiftKey2 && GetKeyState(ShiftKey2, 'P'))
		shiftDown :=  1
	
	if (shiftDown)
		keyAndMods := CurrentLayer.mappingsSh[key]
	else 
		keyAndMods := CurrentLayer.mappings[key]

    if (keyAndMods) {
        
        ; modifiers need to be *before* the {}, ie ^{v}  not {^v}
		mods := keyAndMods.mods
		
        if (up)
            toSend := "{%keyAndMods.key% Up}"
        else
            toSend := "{%keyAndMods.key% DownTemp}"
        
        SetKeyDelay -1
		
		;; Special handling for Alt, cant use Send Blind
		; filter out the Alt, but manually pass through Shift / Ctrl
		if (accessKey == "LAlt" || accessKey == "RAlt" || accessKey == "Alt") {
			; simulate Send Blind, but w/o Alt 
			simulateSendBlind(mods, toSend, '!')
		}
		else {
			; not Alt access key, can use Send Blind
			
			; Using Send blind with +a::/ would be like Send +/ which results in ?
			; since Shift is currently pressed
			if (shiftDown && !keyAndMods.isShifted)
				; simulate Send Blind, but w/o Shift
				simulateSendBlind(mods, toSend, '+')
			else
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
