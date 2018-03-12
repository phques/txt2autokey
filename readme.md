// txt2autokey project  
// Copyright 2017 Philippe Quesnel  
// Licensed under the Academic Free License version 3.0 


Quick & dirty Go program to read a text file definition of a keyboard layout 
and output an autokey keys remapping script  
(I'm using autokey v2)

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

There is also an 'extend' #include, that has arrow keys etc, plus Shift, Control, 
Alt when Capslock is held.
It is generated by a perl script that reads a simple text format.

Many of these ideas were taken from different communities, including PKL,
 Colemak (extend idea from DreymaR's bag of tricks) etc
 
 I am using code from the Pkl project to display an on screen help image of the kbd layout, 
 see license under fromPkl/ directory

The examples/ directory contains example AHK layouts generated with this app.
These dont work with AutoHotkey_2.0-a089, I was using AutoHotkey_2.0-a078

The examples.layers/ directory contains layouts that define layouts directly in a AHK script, using the layers.ahk script
They need AutoHotkey_2.0-a089 or later