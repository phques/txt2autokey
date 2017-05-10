global layerKeys  := {}

doLayerKey(key, up)
{
    k := layerKeys [key]

    ;##PP how to test if we have a value !?
    ;if (k)
    {
        s := ""
        
        ; modifiers need to be *before* the {, ie ^{v  not {^v
        ; (need to handle !^+ ...)
        ; need also to check for eg +^ where we mean shift '^' (check length > 1)
        if (SubStr(k, 1,1) = "^") {
            s .= "^" 
            k := SubStr(k, 2)
        }

        if (up)
            s .= "{%k% Up}"
        else
            s .= "{%k% DownTemp}"
        
        SetKeyDelay -1
        Send {Blind}%s%
    }
}
