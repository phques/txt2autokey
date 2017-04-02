// txt2autokey project  
// Copyright 2017 Philippe Quesnel  
// Licensed under the Academic Free License version 3.0 


Quick & dirty Go program to read a text file definition of a keyboard layout 
and output an autokey keys remapping script

Representation of a kbd (main 30 keys in this example):  
(no whitespace kept in internal representation)

	Keyboard
	
	  KbdRows  
		Q W E R T Y U I O P		// KbdRow  
		A S D F G H J K L ;  
		Z X C V B N M , . /  
	
	  KbdRows  
		q w e r t y u i o p  
		a s d f g h j k l ;  
		z x c v b n m , . /  

parameters: qwertyLayoutFile newLayoutFile includeFilename  
  use -- for includeFile if none is required
