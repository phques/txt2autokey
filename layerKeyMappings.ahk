; functions to define a layer (ala AltGr) of mappings,
; Space & xx : yy
; Space & aa : bb

; note that it currently does not work for Alt keys as prefix !!
; see extendDoKey.ahk for a solution

; layers[layerIdx] = object
;   obj.prefixKey = prefixKey
;   obj.mappings = {fromKey : toKey ...}

global layers := []

; empty mappings and set the layer hotkey prefix
; call this once before multiple calls to MapKayerHotkeys
; notethat this does/can not delete any hotkeys
InitLayerMappings(layerIndex, _layerPrefixKey)
{
	layerDef := {}
	layerDef.prefixKey := _layerPrefixKey
	layerDef.mappings := {}
	
	layers[layerIndex] := layerDef
}


; create hotkeys and create mappings : %layerPrefixKey% & _from :: _to
; where_from / _to are whitespace separated lists of keys
; ie "a b c", "@ # $"
; or "1 2 3", "^c ^v ^x"
MapLayerHotkeys(layerIndex, _from, _to)
{
	; get layer def
	layerDef := layers[layerIndex]
	if (!layerDef)
	{
		MsgBox MapLayerHotkeys layer %layerDef% does not exist
		ExitApp
	}
	
	; trim pre/post spaces and compress multi spaces into one
	from := Trim(_from)
	from := RegExReplace(from, "\s{2,}", " ")

	to := Trim(_to)
	to := RegExReplace(to, "\s{2,}", " ")

	; split into from / to separate pieces (separ = space)
	froms := StrSplit(from, A_Space)
	tos := StrSplit(to, A_Space)
	
	if (froms.Length != tos.Length) 
	{
		MsgBox % Format("createHotkeys, From/to not same length {} {}!`n{} `n{}"
						, froms.Length, tos.Length
						, _from, _to, )
						; , SubStr(_from, 1, 16), SubStr(_to, 1, 16))
		return
	}

	; loop on froms / tos, create hotkeys and mappings
	Loop froms.Length
	{
		f := froms[A_Index]
		t := tos[A_Index]
		
		; create the actual layer hotkey e.g Space + q
		createLayerHotKey(layerIndex, layerDef.prefixKey, f)		
		
		; save what this layer hotkey generates, Space + q = Escape
		layerDef.mappings[f] := t
	}
}


;-----------

; called (by a hotkey) to handle a layer key
; e.g Space & q :: Escape
; key = "q", up = 0/1 if on key up/down
doLayerKey(layerIndex, keyHit, up)
{
	; get layer def
	layerDef := layers[layerIndex]
	if (!layerDef)
		return

	; get destination key for this layer hotkey
    outputKey := layerDef.mappings[keyHit]
	prefix := layerDef.prefixKey

    if (Strlen(outputKey) != 0)
    {
        mods := ""
        
		;#PQ TODO, do this in pre-processing ?
        ; modifiers need to be *before* the {}, ie ^{v}  not {^v}
		; split prefix modifiers and key (supports cases like +^ => Shift ^)
		foundPos := RegExMatch(outputKey, "^([#!+^<>]+)(.{1,})", match)
		if (foundPos)
		{
			mods := match[1]
			outputKey := match[2]
		}

        if (up)
            s := "{%outputKey% Up}"
        else
            s := "{%outputKey% DownTemp}"
        
        SetKeyDelay -1
		;;## for now just don't use Send {Blind} if using Alt as prefix
		if (prefix == "LAlt" || prefix == "RAlt" || prefix == "Alt")
			Send %mods%%s%
		else
			Send {Blind}%mods%%s%
    }
	else
	{
		MsgBox "cannot find key %keyHit%"
	}
	
}

; create a hotkey pre & post, calls doLayerKey(post, 1/0)
createLayerHotkey(layerIndex, pre, post)
{
	; convert pre/post to scancode representation 'scXXX'
	; sc := GetKeySC(pre)
	; scPre := Format("sc{:03x}", sc)
	; PQ 2017-05-16, sc038 will NOT work for LAlt !!
	;   we'll assume here that the prefix key has not been remapped,
	;   so use it directly iso its scanCode version
	scPre := pre

	sc := GetKeySC(post)
	scPost := Format("sc{:03x}", sc)

	; create function object with params that hotkey will call : doLayerKey(..)
	fnDown := Func("doLayerKey").Bind(layerIndex, post, 0)
	fnUp := Func("doLayerKey").Bind(layerIndex, post, 1)

	; create hotKey
	HotKey %scPre% & %scPost%, %fnDown%
	HotKey %scPre% & %scPost% up, %fnUp%
	
}

