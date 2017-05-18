'Extend layer' definition
-------------------------

defined in a text file:

	CapsLock  
	j|024::Left
	l|026::Right

1st line is the extend key,  
The line `"j|024::Left"` is interpreted as:  
  letter 'j' / scancode 024 (3 digits hex !), maps to the Left arrow

The letter is for human ref on Qwerty kbd only, we will use the scancode

----

Note that to send Ctrl-Z, we use `}^{z`  
`z|02C::}^{z`

since we convert $scancode / $destKey to

    CapsLock & $scancode::
     SetKeyDelay -1
     Send {Blind}{$destKey}
    return


to send ctrl-z, we want `"Send {Blind}^{z}"`  
so we use a trick by using `}^{z`  
so that `"Send {Blind}{$destKey}"` gets converted to:  
`  Send {Blind}{}^{z}`  
notice the extra {}, where `^{z}` represents ctrl-z in Autokey  
(thx to DreymaR / Pkl !)