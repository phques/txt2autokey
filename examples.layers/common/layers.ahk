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
global LastKeyDownWasLayerAccess := 0 ;; true if last key was a layer access key
global dualModeKeyDown := 0     ;; true when we press a dualMode key

; If we remap a key to be shift, GetKeyState(Shift) returns false sometimes after 
; another has been pressed. So we will check for actual fake shift key also
; use SetShiftKey() to set
global ShiftKey1 := 0
global ShiftKey2 := 0

global NoKeyChar := ''

;----------

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
        CreateLayerAccessHotkey(layerDef, layerIndex, layerAccessKey)
    }
}


;----------

SetNoKeyChar(char)
{
    NoKeyChar := char
}

;----------

global keyAbbrevs := { "SP" : "Space", "CL" : "CapsLock", "LSh" : "LShift", "RSh" : "RShift" }

AddMapping(f, t, shiftedLayer, layerDef)
{
    ; leading @ indicates dual mode key (in 'from')
    ; (single click generates 'to' key, held down is modifier)
    isDualModeKey := 0
    if (SubStr(f,1,1) == '@') {
        f := SubStr(f,2) ; strip @
        isDualModeKey := 1
    }

    ; replace abbreviations with real value
    if (keyAbbrevs[f])
        f := keyAbbrevs[f]
    
    if (keyAbbrevs[t])
        t := keyAbbrevs[t]
        

    splitFrom := splitModsAndKey(f)
    splitTo := splitModsAndKey(t)

    ; set flag indicating if the char to output is shifted (ie ! is Shift-1)
    shiftedChars := 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
    shiftedChars .='~!@#$`%^&*()_+{}|:"<>?'
    if (InStr(shiftedChars, splitTo.key))
        splitTo.isShifted := 1

    splitTo.isDualMode := isDualModeKey
        
    ; create hotkey for 'from' key if required
    ; note we DONT use modifiers, that's what layers are for !
    createHotkey(splitFrom.key)
    
    ; save this mapping in layer
    if (shiftedLayer)
        layerDef.mappingsSh[splitFrom.key] := splitTo
    else
        layerDef.mappings[splitFrom.key] := splitTo

}


; add new key mappings for a layer
; when 'fromKey' is hit on this layer, will output 'toKey'
; _from/_to are space separated
; Creates a hotkey foreach _from if not already defined
AddMappings(layerIndex, shiftedLayer, _from, _to)
{
    ; get layer def
    layerDef := layers[layerIndex]
    if (!layerDef) {
        MsgBox "AddMappings, layer " layerIndex " does not exist"
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

    if (froms.Length() != tos.Length()) 
    {
        msg := Format("AddMappings, From/to not same length {} {}!`n{} `n{}"
                        , froms.Length(), tos.Length()
                        , froms, tos, )
        MsgBox(msg)
                        ; , SubStr(_from, 1, 16), SubStr(_to, 1, 16))
        ExitApp
    }

    ; loop on froms / tos, create mappings in layer
    Loop froms.Length()
    {
        f := froms[A_Index]
        t := tos[A_Index]

        ; skip this one if not mapped
        if (t != NoKeyChar)
            AddMapping(f, t, shiftedLayer, layerDef)
    }
}



AddMappingsOne(layerIndex, shiftedLayer, fromAndTos)
{
    ; get layer def
    layerDef := layers[layerIndex]
    if (!layerDef) {
        MsgBox "AddMappingsOne, layer " layerIndex " does not exist"
        ExitApp
    }

    ; loop on Lines
    Loop Parse fromAndTos, '`r`n'
    {
        ; split line into into array (separ = space)
        line := Trim(A_LoopField)
        line := RegExReplace(line, "\s{2,}", " ")
        fromAndTo := StrSplit(line, A_Space)

        nbrOfMappings := fromAndTo.Length() // 2
        if (nbrOfMappings * 2 != fromAndTo.Length()) {
            msg := Format("AddMappingsOne, From/to not same length !`n{}", line )
            MsgBox(msg)
            ExitApp
        }

        ; process this Line
        Loop nbrOfMappings
        {
            f := fromAndTo[A_Index]
            t := fromAndTo[A_Index + nbrOfMappings]

            AddMapping(f, t, shiftedLayer, layerDef)
        }
    }

}


;---------

; Set the isShifted flag a key mapping that is on the shifted layer of layerIdx
; (eg was needed with Tab remapped on another key, for Shift-Tab to work)
MarkMappingAsShifted(layerIndex, fromkey, toKey)
{
    layer := Layers[layerIndex]
    if (layer) {
        keyAndMods := layer.mappingsSh[fromkey]
        if (keyAndMods) {
            ; sanity check
            if (keyAndMods.key == toKey) {
                keyAndMods.isShifted := 1
            }
        }
    }
}


; call this so onLayerKey() can detect that a key mapped to 'Shift' is held down 
; (for some reason we loose the 'shift is down' status after the 1st "shift-XX")
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


; create hotkey for layer access key
CreateLayerAccessHotkey(layerDef, layerIndex, layerAccessKey)
{
    ; convert to scandcode format sc000
    sc := GetKeySC(layerAccessKey)
    hotkeyName := Format("sc{:03x}", sc)

    ; save real key 
    layerDef.accessKey := hotkeyName
    
    ; create function object with params that hotkey will call 
    fnDn := Func("onLayerAccessKey").Bind(layerIndex, 0)
    fnUp := Func("onLayerAccessKey").Bind(layerIndex, 1)
    
    ; create hotKey
    ; use * so that access key will trigger even if modifiers are pressed
    ; eg: using Space as layer access, 
    ;  w/o *, space + shift was causing spaces to print out 
    ;  hotkey not trapping space !
    HotKey "*" hotkeyName, fnDn
    HotKey "*" hotkeyName " up", fnUp
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
        ; fnDn := Func("onLayerKey").Bind(sc, 0)
        ; fnUp := Func("onLayerKey").Bind(sc, 1)
        fnDn := Func("onLayerKey").Bind(key, 0)
        fnUp := Func("onLayerKey").Bind(key, 1)

        ; create hotKey
        ; add '*' to hotkeyname (hotkey will work even when other mods are pressed)
        hotkeyName := '*' sc
        HotKey hotkeyName, fnDn
        HotKey hotkeyName " up", fnUp
        
        ; remember we created this
        DefinedHotKeys[sc] := 1
    } 
}

;--------

simulateSendBlind(mods, toSend, pressedModToFilterOut)
{

    ; add modifiers for shift / control if they are currently pressed
    ; might come into conflict with mods from key def though !?
    if (!InStr('+', pressedModToFilterOut) && GetKeyState("Shift")) 
        mods .= "+"
        
    if (!InStr('^', pressedModToFilterOut) && GetKeyState("Ctrl")) 
        mods .= "^"

    if (!InStr('!', pressedModToFilterOut) && GetKeyState("Alt")) 
        mods .= "!"

    ;OutputDebug("Send1 " mods toSend)
    Send mods toSend
}


; called by a hotkey to handle a key press/release 
onLayerKey(key, up)
{
    OutputDebug("onLayerKey " key " up = " up ", layer " CurrentLayer.index)
    
    if (!CurrentLayer)
        return

    keyName := GetKeyName(key)

    ; last key is not a layer access key anymore
    ; we only care about DOWN keystrokes, 
    ; this fixes problems with layerAccessKeys that can also output soethin on press/release
    ; we otherwise can have cases where typing quickly makes the key NOT output something
    if (!up) {
      LastKeyDownWasLayerAccess := 0
    }
        
    ; get destination/ouput/mapped key for this layer key
    accessKey := CurrentLayer.accessKey
    
    shiftDown := 0
    nbrShiftDown := 0
    if (GetKeyState("LShift")) {
        shiftDown :=  1
        nbrShiftDown += 1
    } 
    if (GetKeyState("RShift")) {
        shiftDown :=  1
        nbrShiftDown += 1
    }
    if (ShiftKey1 && GetKeyState(ShiftKey1, 'P')) {
        shiftDown :=  1
        nbrShiftDown += 1
    } 
    if (ShiftKey2 && GetKeyState(ShiftKey2, 'P')) {
        shiftDown :=  1
        nbrShiftDown += 1
    }
    
    if (shiftDown)
        keyAndMods := CurrentLayer.mappingsSh[key]
    else 
        keyAndMods := CurrentLayer.mappings[key]

    ; special case for dual mode Shift
    ; since 'shift is down' we get the shifted mappings above ^^
    ; but if there is no shifted mappings for Shift, then keyAndMods is empty
    if (!keyAndMods) {
        if (keyName == "LShift" || keyName == "RShift") {
            ; if this was the only shift key down,
            ; go back to non shifted level of the layer
            if (nbrShiftDown == 1) {
                OutputDebug("shift !keyAndMods, revert to non shifted")
                keyAndMods := CurrentLayer.mappings[key]
            }
        }
    }

    if (keyAndMods) {

        SetKeyDelay -1

        ; handling of dual mode keys (single click generates key, held down is modifier)
        ; only works with modifier key!
        generatingDualModeOutput := 0
        if (dualModeKeyDown) {
            
            ; Detect if we have consecutive dualMode key press and release

            ; cant use A_PriorKey, if holding down Space as layer access,
            ; then it will eventually repeat ! And we can end up w. Space Downs
            ; between dualMode key down and Up
            ; if (A_PriorKey == keyName) {

            ; if it does say it is the same key, the use it
            dualModeKeyRepeat := (A_PriorKey == keyName)

            ; check if interrupted by repeating layer access key
            if (!dualModeKeyRepeat) {
                OutputDebug("!dualModeKeyRepeat " . key . " " . CurrentLayer.accessKey)
                ; ignore repeating key for current layer
                if (key == CurrentLayer.accessKey) {
                    dualModeKeyRepeat := 1
                    OutputDebug('dualModeKeyDown, ignore repeating key for current layer')
                }
            }

            if (dualModeKeyRepeat) {

                ; consecutive dual mode key events
                OutputDebug('dualModeKeyDown, prior ==')

                if (up) {
                    OutputDebug("Send2 {Blind}{" key " Up}")
                    ; key was held down, send dummy 'up' to release it
                    Send "{Blind}{" key " Up}"
                    
                    ; shift key used as hotkey
                    if (keyName == "LShift" || keyName == "RShift") {
                        ; if this was the only shift key down,
                        ; go back to non shifted level of the layer
                        if (nbrShiftDown == 1) {
                            OutputDebug("removing shiftdown")
                            keyAndMods := CurrentLayer.mappings[key]
                            ;pq leave this so we take care of removing Shift if out key is lowercase key
                            ;shiftDown := 0
                        }
                    }
                    
                    OutputDebug("Send3 " keyAndMods.key " DownTemp")
                    ; send initial Down for the generated output,
                    ; the Up event is generated normally below
                    Send "{Blind}{" keyAndMods.key " DownTemp}"
                    generatingDualModeOutput := 1
                }
                else {
                    ; key down repeat, skip
                    return
                }
            }
            else {
                OutputDebug('dualModeKeyDown, prior !=, prior = ' A_PriorKey)
            }

            dualModeKeyDown := 0
        } 
        
        if (!generatingDualModeOutput) {
            if (keyAndMods.isDualMode) {
                ; non consecutive dual mode key event
                if (up) {
                    OutputDebug("Send4.1 " key " Up")
                    ; key released after being used as modifier
                    ; key was held down, send dummy 'up' to release it
                    Send "{Blind}{" key " Up}"
                    ;keyAndMods.dualModeKeyDown := 0
                } 
                else {
                    OutputDebug("Send4.2 " key " DownTemp")
                    ; send initial key down of modifier
                    Send "{Blind}{" key " DownTemp}"
                    ;keyAndMods.dualModeKeyDown := key
                    dualModeKeyDown := 1
                }

                ; ****
                return
             }
        }
        
        ; modifiers need to be *before* the {}, ie ^{v}  not {^v}
        mods := keyAndMods.mods
        
        if (up)
            toSend := "{" keyAndMods.key " Up}"
        else
            toSend := "{" keyAndMods.key " DownTemp}"
        
        ;; Special handling for Alt, cant use Send Blind
        ; filter out the Alt, but manually pass through Shift / Ctrl
        if (InStr(accessKey, "Alt")) {
            ; simulate Send Blind, but w/o Alt 
            skip := '!'
            
            if (shiftDown && !keyAndMods.isShifted)
                ; AND w/o shift
                skip += '+'

            simulateSendBlind(mods, toSend, skip)
        }
        else {
            ; not Alt access key, can use Send Blind
            
            ; Using Send blind with +a::/ would be like Send +/ which results in ?
            ; since Shift is currently pressed
            if (shiftDown && !keyAndMods.isShifted) {
                ; simulate Send Blind, but w/o Shift
                simulateSendBlind(mods, toSend, '+')
            } 
            else {
                ; OutputDebug("Send {Blind}" mods toSend)
                Send "{Blind}" mods toSend
            }
        }
    }
    else {
        ; just send the original key
        OutputDebug('no mapping ' key)
        if (up)
            Send "{Blind}{" key " up}"
        else
            Send "{Blind}{" key " DownTemp}"
    }
    
}

;--------

; called by a hotkey to handle a key press/release of a layer access key
onLayerAccessKey(layerIndex, up)
{
; OutputDebug('onLayerAccessKey ' . layerIndex)

    ; already accessing a layer, skip if different
    ;; (might use key combos for layer access in the future?)
    if (LastKeyDownWasLayerAccess && CurrentLayer && CurrentLayer.index != layerIndex)
        return
        
    ; On access key up, reset current layer to main &
    ; reset LastKeyDownWasLayerAccess
    if (up) {
        ; no key was hit after this layer access key was released, 
        ; this is just a press/release of it, send it if so configured
        if (LastKeyDownWasLayerAccess && !CurrentLayer.blockAccessKey) {
            Send "{Blind}{" CurrentLayer.accessKey "}"
        }
        
        ; reset to main layer
        OutputDebug('  reset to main layer')
        CurrentLayer := Layers[1]
        LastKeyDownWasLayerAccess := 0
    }
    else {
        ; layer access key down
        ; select layer
        if (CurrentLayer && CurrentLayer.index != layerIndex) {
            OutputDebug('activate layer ' . layerIndex)
            CurrentLayer := Layers[layerIndex]
            LastKeyDownWasLayerAccess := 1
        }
    }
}
