
global Mappings := {}


onLayerKey(scancode, isDown)
{
    if (isDown)
        Send {Blind}{%scancode% up}
    else
        Send {Blind}{%scancode% DownTemp}

}


; key => 'sc000'
FormatAsScancode(key)
{
	sc := GetKeySC(key)
	sc := Format("sc{:03x}", sc)
    return sc
}

; keyScancode = 'sc000'
CreateHotkey(keyScancode)
{
    fnDn := Func("onLayerKey").Bind(keyScancode, 1)
    fnUp := Func("onLayerKey").Bind(keyScancode, 0)

    ; create hotKey
    ; add '*' to hotkeyname (hotkey will work even when other mods are pressed)
    sc := keyScancode
    hotkeyName := '*' . sc
    
    HotKey %hotkeyName%, %fnDn%
    HotKey %hotkeyName% up, %fnUp%
}


Loop 255
{
    scancode := Format("sc{:03x}", A_Index)
    CreateHotkey(scancode)
}

mapping := {}
mapping.key := ''

Mappings[]

