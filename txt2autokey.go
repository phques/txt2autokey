// txt2autokey project
// Copyright 2017 Philippe Quesnel
// Licensed under the Academic Free License version 3.0
package main

import (
	"bytes"
	"fmt"
	"os"

	"github.com/phques/txt2autokey/kbdRdr"
)

var specialChars = []byte("%`;") // need to escape
//var specialChars = []byte(",%`;") // need to escape

var shiftedKeys []byte
var unshiftedKeys []byte
var keyToScan map[byte]uint

func init() {
	u := "`1234567890-=qwertyuiop[]\\asdfghjkl;'zxcvbnm,./"
	s := "~!@#$%^&*()_+QWERTYUIOP{}|ASDFGHJKL:\"ZXCVBNM<>?"
	unshiftedKeys = []byte(u)
	shiftedKeys = []byte(s)

	keyToScan = map[byte]uint{
		'`':  0x029,
		'1':  0x002,
		'2':  0x003,
		'3':  0x004,
		'4':  0x005,
		'5':  0x006,
		'6':  0x007,
		'7':  0x008,
		'8':  0x009,
		'9':  0x00A,
		'0':  0x00B,
		'-':  0x00C,
		'=':  0x00D,
		'q':  0x010,
		'w':  0x011,
		'e':  0x012,
		'r':  0x013,
		't':  0x014,
		'y':  0x015,
		'u':  0x016,
		'i':  0x017,
		'o':  0x018,
		'p':  0x019,
		'[':  0x01A,
		']':  0x01B,
		'\\': 0x02B,
		'a':  0x01E,
		's':  0x01F,
		'd':  0x020,
		'f':  0x021,
		'g':  0x022,
		'h':  0x023,
		'j':  0x024,
		'k':  0x025,
		'l':  0x026,
		';':  0x027,
		'\'': 0x028,
		'z':  0x02C,
		'x':  0x02D,
		'c':  0x02E,
		'v':  0x02F,
		'b':  0x030,
		'n':  0x031,
		'm':  0x032,
		',':  0x033,
		'.':  0x034,
		'/':  0x035,
	}
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

// returns scancode of the character, with a "+" if it is shifted
func getScanCode(c byte) (uint, string) {
	// if it is a shifted key, return the unshifted version
	// with a '+'
	plus := ""
	idx := bytes.IndexByte(shiftedKeys, c)
	if idx >= 0 {
		c = unshiftedKeys[idx]
		plus = "+"
	}
	return keyToScan[c], plus
}

//-----

// outputs upper, lower mapping for each key, using scan codes
func outputKbdMapping(fromKbd, toKbd *kbdRdr.Keyboard) {
	// for each row (both shifted and unshifted)
	for rowIdx := 0; rowIdx < len(fromKbd.UpperCase); rowIdx++ {
		upperRowFrom := fromKbd.UpperCase[rowIdx]
		lowerRowFrom := fromKbd.LowerCase[rowIdx]
		upperRowTo := toKbd.UpperCase[rowIdx]
		lowerRowTo := toKbd.LowerCase[rowIdx]

		// for each char of the row	(both shifted and unshifted)
		for i := 0; i < len(upperRowTo); i++ {
			outputKeyMapping(
				upperRowFrom[i],
				lowerRowFrom[i],
				upperRowTo[i],
				lowerRowTo[i])
		}
	}
}

func outputKeyMapping(upperFrom, lowerFrom, upperTo, lowerTo byte) {
	// skip if this key stays the same
	if lowerFrom == lowerTo && upperFrom == upperTo {
		return
	}

	// if simply mapping a key to another, use one line "a::b"
	if unshiftKey(upperTo) == lowerTo {
		fromScan := keyToScan[lowerFrom]
		toScan := keyToScan[lowerTo]
		fmt.Printf("*sc%03x::sc%03x", fromScan, toScan)
		fmt.Printf("\t\t\t; %c :: %c\n", lowerFrom, lowerTo)
		return
	}

	// 'upper'/shifted from
	fromScan := keyToScan[unshiftKey(upperFrom)]
	toScan, plus := getScanCode(upperTo)
	// special case for unshifted 'to' on a shifted 'from'
	if !isShiftedKey(upperTo) {
		fmt.Printf("+sc%03x::Send %s{sc%03x}", fromScan, plus, toScan)
		fmt.Printf("\t; %c :: %c\n", upperFrom, upperTo)
	} else {
		fmt.Printf("+sc%03x::%ssc%03x", fromScan, plus, toScan)
		fmt.Printf("\t\t\t; %c :: %c\n", upperFrom, upperTo)
	}

	// 'lower' / unshifted key from
	fromScan = keyToScan[lowerFrom]
	toScan, plus = getScanCode(lowerTo)
	fmt.Printf(" sc%03x::%ssc%03x", fromScan, plus, toScan)
	fmt.Printf("\t\t\t; %c :: %c\n", lowerFrom, lowerTo)

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
	outputKbdMapping(fromKbd, toKbd)

}
