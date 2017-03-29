// txt2autokey project  
// Copyright 2017 Philippe Quesnel  
// Licensed under the Academic Free License version 3.0 


Quick & dirty Go program to read a text file definition of a keyboard layout 
and output an autokey keys remapping script

Takes something like this from a text file:
(only the 30 main keys, whitespace will be removed)

		B L O U / J D C P Y
		H R E A ? G T S N I
		K X < > Z W M F V Q

		b l o u ; j d c p y  
		h r e a , g t s n i  
		k x : . z w m f v q  

