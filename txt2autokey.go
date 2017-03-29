// txt2autokey project
// Copyright 2017 Philippe Quesnel
// Licensed under the Academic Free License version 3.0
package main

import (
	"fmt"

	"github.com/phques/txt2autokey/kbdRdr"
)

//------

func main() {
	kbd := new(kbdRdr.Keyboard)
	err := kbd.ReadKeyboardFile("cmk_moddh.txt")
	if err == nil {
		fmt.Println(kbd.String())
	} else {
		fmt.Println(err)
	}
}
