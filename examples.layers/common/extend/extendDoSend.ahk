; does not work correctly with Shift..(?)
; ok with for ex CapsLock, Space, LAlt/RAlt now ok too
global theExtendKey := '!'


SetExtendKey(key)
{
    theExtendKey := key
}

; create hotkey : theExtendKey & key => outChar(s)
; extHK('a', 'tab')
; extHK('q', '^', 'z')
extHK(key, p1, p2 := '')
{
    if (p2)
    {
        mods := p1
        out := p2
    }
    else
    {
        mods := ''
        out := p1
    }
    fnUp := Func("extendDoSend").Bind('{' out ' Up}'  , mods)
    fnDn := Func("extendDoSend").Bind('{' out ' Down}', mods)

    sc1 := Format("sc{:03x}", GetKeySC(theExtendKey))
    sc2 := Format("sc{:03x}", GetKeySC(key))
    
    if (theExtendKey = 'lalt' || theExtendKey = 'ralt')
        sc1 := theExtendKey
    
    HotKey  sc1 ' & ' sc2      , fnDn
    HotKey  sc1 ' & ' sc2 ' up', fnUp

}   

; call this AFTER all toher hotkeys are defined,
; if you want the exendKey to be used to output xomething on its own
; output out or if !out : will output itself
extHKitself(mods, out)
{
    if (!out)
        out := theExtendKey
        
    fnDn := Func("extendDoSend").Bind('{' out ' Down}', mods)
    fnUp := Func("extendDoSend").Bind('{' out ' Up}'  , mods)

    sc1 := Format("*sc{:03x}", GetKeySC(theExtendKey))
    if (theExtendKey = 'lalt' || theExtendKey = 'ralt')
        sc1 := theExtendKey
    HotKey  sc1      , fnDn
    HotKey  sc1 ' up', fnUp

}   

; called to send output of an extend key
extendDoSend(tosend, mods)
{   
    SetKeyDelay -1
    if (theExtendKey = 'lalt' || theExtendKey = 'ralt')
        Send '{Blind!}' mods tosend
    else
        Send '{Blind}' mods tosend
}


/*
; SetExtendKey('Space')
SetExtendKey('CapsLock')

extHK('a', 'tab')
extHK('q', '^', 'z')
extHKitself('', 'CapsLock')
extHKitself('', '')
 
*/

