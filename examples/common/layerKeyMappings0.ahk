; functions to define a layer (ala AltGr) of mappings,
; Space & xx : yy
; Space & aa : bb

; note that it currently does not work for Alt keys as prefix !!
; see extendDoKey.ahk for a solution

; holds mappings fromKey => toKey
global layerMappings := {}
global layerPrefixKey := ""

; empty mappings and set the layer hotkey prefix
; call this once before multiple calls to MapKayerHotkeys
; notethat this does/can not delete any hotkeys
InitLayerMappings(_layerPrefixKey)
{
	layerPrefixKey := _layerPrefixKey
	layerMappings := {}
}


; create hotkeys and create mappings : %layerPrefixKey% & _from :: _to
; where_from / _to are whitespace separated lists of keys
; ie "a b c", "@ # $"
; or "1 2 3", "^c ^v ^x"
MapLayerHotkeys(_from, _to)
{
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
						, SubStr(_from, 1, 16), SubStr(_to, 1, 16))
		return
	}

	; loop on froms / tos, create hotkeys and mappings
	Loop froms.Length
	{
		f := froms[A_Index]
		t := tos[A_Index]
		
		; create the actual layer hotkey e.g Space + q
		createLayerHotKey(layerPrefixKey, f)		
		
		; save what this layer hotkey generates, Space + q = Escape
		layerMappings[f] := t
	}
}


;-----------

; called (by a hotkey) to handle a layer key
; e.g Space & q :: Escape
; key = "q", up = 0/1 if on key up/down
doLayerKey(keyHit, up)
{
	; get destination key for this layer hotkey
    outputKey := layerMappings[keyHit]

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
        Send {Blind}%mods%%s%
    }
	else
	{
		MsgBox "cannot find key %keyHit%"
	}
	
}

; create a hotkey pre & post, calls doLayerKey(post, 1/0)
createLayerHotkey(pre, post)
{
	; convert pre/post to scancode representation 'scXXX'
	sc := GetKeySC(pre)
	scPre := Format("sc{:03x}", sc)

	sc := GetKeySC(post)
	scPost := Format("sc{:03x}", sc)

	; create function object with params that hotkey will call : doLayerKey(..)
	fnDown := Func("doLayerKey").Bind(post, 0)
	fnUp := Func("doLayerKey").Bind(post, 1)

	; create hotKey
	HotKey %scPre% & %scPost%, %fnDown%
	HotKey %scPre% & %scPost% up, %fnUp%
	
}

