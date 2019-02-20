
; punc layer
; does not contain:
;  /?'., which are expected to be on main layer 

;  $ < - > %     ~ [ ] @ 
;  \ ( " ) !     { = } ;
;    : * + #     & ^ _ | 


CreatePuncLayer(layerNo, layerAccessKey, blockAccessKey, wideRight)
{
    ; SetNoKeyChar('.')
    CreateLayer(layerNo, layerAccessKey, blockAccessKey) 

    ; left hand
    AddMappings(layerNo, 0, '    q w e r t ',  '   $ < - > %  ')
    AddMappings(layerNo, 0, ' CL a s d f g ',  ' _ \ ( " ) !  ')
    AddMappings(layerNo, 0, '   z x c v    ',  '    : * + #   ') 

    ; right hand 
    ;   add _; since we cannot use CapsLock on Linux 
    if (wideRight) {
        ; use wid-mode 
        AddMappings(layerNo, 0, '   i o p [  ',   '   ~ [ ] @  ')
        AddMappings(layerNo, 0, "   k l `; ' ",   '   { = } `; ')
        AddMappings(layerNo, 0, ' m , . /    ',   ' | & ^ _    ') 
    }
    else {
        ; home row (good w. my Microsoft ergo kbd)
        ; (expecting to use shis version on Linux)
        AddMappings(layerNo, 0, ' u i o p   ',   ' ~ [ ] @  ')
        AddMappings(layerNo, 0, " j k l `;  ",   ' { = } `; ')
        AddMappings(layerNo, 0, ' m , . /   ',   ' & ^ _ |  ') 
    }
}
