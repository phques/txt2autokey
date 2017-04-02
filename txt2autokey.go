// txt2autokey project
// Copyright 2017 Philippe Quesnel
// Licensed under the Academic Free License version 3.0
package main

import (
	"bytes"
	"fmt"
	"os"
	"unicode"

	"github.com/phques/txt2autokey/kbdRdr"
)

var specialChars = []byte("%`;") // need to escape
//var specialChars = []byte(",%`;") // need to escape

var shiftedKeys []byte
var unshiftedKeys []byte

func init() {
	u := "`1234567890-=qwertyuiop[]\\asdfghjkl;'zxcvbnm,./"
	s := "~!@#$%^&*()_+QWERTYUIOP{}|ASDFGHJKL:\"ZXCVBNM<>?"
	unshiftedKeys = []byte(u)
	shiftedKeys = []byte(s)

}

//------

func escape(c byte) string {
	if bytes.IndexByte(specialChars, c) >= 0 {
		return fmt.Sprintf("`%c", c)
	}
	return string(c)
}

func isShiftedKey(c byte) bool {
	return bytes.IndexByte(shiftedKeys, c) >= 0
}

func unshiftKey(c byte) byte {
	// if it is a shifted key, return the unshifted version
	idx := bytes.IndexByte(shiftedKeys, c)
	if idx >= 0 {
		c = unshiftedKeys[idx]
	}
	return c
}

//-----

// outputs upper, lower mapping for each key
func outputMapping(fromKbd, toKbd *kbdRdr.Keyboard) {
	// for each row (both shifted and unshifted)
	for rowIdx := 0; rowIdx < len(fromKbd.UpperCase); rowIdx++ {
		upperRowFrom := fromKbd.UpperCase[rowIdx]
		lowerRowFrom := fromKbd.LowerCase[rowIdx]
		upperRowTo := toKbd.UpperCase[rowIdx]
		lowerRowTo := toKbd.LowerCase[rowIdx]

		// for each char of the row	(both shifted and unshifted)
		for i := 0; i < len(upperRowTo); i++ {
			upperFrom := upperRowFrom[i]
			lowerFrom := lowerRowFrom[i]
			upperTo := upperRowTo[i]
			lowerTo := lowerRowTo[i]

			// skip if this key stays the same
			if lowerFrom == lowerTo {
				continue
			}

			// upper from, must use "+h" (shift h) for 'H' for letters
			var escapedUpperFrom string
			if unicode.IsLetter(rune(upperFrom)) {
				escapedUpperFrom = "+" + escape(unshiftKey(upperFrom))
			} else {
				escapedUpperFrom = "*" + escape(upperFrom)
			}
			escapedUpperTo := escape(upperTo)
			escapedLowerFrom := escape(lowerFrom)
			escapedLowerTo := escape(lowerTo)

			// if simply mapping a key to another, use one line "a::b"
			if unshiftKey(upperTo) == lowerTo {
				fmt.Printf("%s::%s\n", escapedLowerFrom, escapedLowerTo)
			} else {

				// 'upper'/shifted from
				// special case for unshifted 'to' on a shifted 'from'
				if !isShiftedKey(upperTo) {
					fmt.Printf("%s::Send {%s}\n", escapedUpperFrom, escapedUpperTo)
				} else {
					fmt.Printf("%s::%s\n", escapedUpperFrom, escapedUpperTo)
				}

				// 'lower' / unshifted key from
				fmt.Printf("*%s::%s\n", escapedLowerFrom, escapedLowerTo)
			}
		}
	}
}

//--------

func main() {
	if len(os.Args) != 4 {
		fmt.Println("parameters: qwertyLayoutFile newLayoutFile includeFilename")
		fmt.Println(" use -- for includeFile if none is required")
		os.Exit(-1)
	}

	// get variables from command line
	fromFilename := os.Args[1]
	toFilename := os.Args[2]
	includeFilename := os.Args[3]

	// read 'from' keyboard def (eg. qwery30Main)
	fromKbd := new(kbdRdr.Keyboard)
	err := fromKbd.ReadKeyboardFile(fromFilename)
	if err != nil {
		fmt.Println(err)
		os.Exit(-1)
	}

	// read 'to' keyboard def
	toKbd := new(kbdRdr.Keyboard)
	err = toKbd.ReadKeyboardFile(toFilename)
	if err != nil {
		fmt.Println(err)
		os.Exit(-1)
	}

	// check that they have the same layout
	if fromKbd.LayoutString() != toKbd.LayoutString() {
		fmt.Println("Error, the two keyboard must have the same layout")
		os.Exit(-1)
	}

	// output 'from' layout in comments
	fmt.Println("/*")
	fmt.Printf("From  (%s)\n", fromFilename)
	fmt.Println(fromKbd.String())

	// then 'to' layout
	fmt.Printf("\nTo  (%s)\n", toFilename)
	fmt.Println(toKbd.String())
	fmt.Println("\n*/\n")

	// and #include, if requested
	// included before mappings so they can override them
	if includeFilename != "--" {
		fmt.Printf("#Include %s\n\n", includeFilename)
	}

	// output key mappings
	outputMapping(fromKbd, toKbd)

}
