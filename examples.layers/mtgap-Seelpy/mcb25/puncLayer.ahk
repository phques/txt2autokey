
; punc layer

CreatePuncLayer(layerNo, layerAccessKey, blockAccessKey, wideRight)
{
    ; SetNoKeyChar('.')
    CreateLayer(layerNo, layerAccessKey, blockAccessKey) 

    ; left hand
    AddMappings(layerNo, 0, '    q w e r   ',  '   $ < - >    ')
    AddMappings(layerNo, 0, ' CL a s d f g ',  ' _ \ ( ! ) `` ')
    AddMappings(layerNo, 0, '   z x c v    ',  '    : * + #   ') 

    ; right hand 
    if (wideRight) {
        ; use wid-mode 
        AddMappings(layerNo, 0, '     o p [  ',   '     [ ] @ ')
        AddMappings(layerNo, 0, "   k l `; ' ",   '   { = } | ')
        AddMappings(layerNo, 0, ' m , . /    ',   ' % & ^ ~   ') 
    }
    else {
        ; home row (good w. my Microsoft ergo kbd)
        AddMappings(layerNo, 0, '   i o p    ',   '   [ ] @   ')
        AddMappings(layerNo, 0, " j k l `; ' ",   ' { = } | % ')
        AddMappings(layerNo, 0, ' m , . /    ',   ' & ^ ~ %   ') 
    }
}
