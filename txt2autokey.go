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

//------

func escape(c byte) string {
	if bytes.IndexByte(specialChars, c) == -1 {
		return string(c)
	}
	return fmt.Sprintf("`%c", c)
}

// output all upper rows then lower rows
func outputMapping(fromKbd, toKbd *kbdRdr.Keyboard) {
	for i := 0; i < len(fromKbd.UpperCase); i++ {
		outputRowMapping(fromKbd.UpperCase[i], toKbd.UpperCase[i])
		fmt.Println("")
	}
	for i := 0; i < len(fromKbd.LowerCase); i++ {
		outputRowMapping(fromKbd.LowerCase[i], toKbd.LowerCase[i])
		fmt.Println("")
	}
}

func outputRowMapping(fromRow, toRow kbdRdr.KbdRow) {
	for i := 0; i < len(fromRow); i++ {
		from := escape(fromRow[i])
		to := escape(toRow[i])
		if from == to {
			fmt.Printf(";%s::%s\n", from, to)
		} else {
			fmt.Printf(" %s::%s\n", from, to)
		}
	}
}

// output upper row then lower row, upper, lower etc
func outputMapping0(fromKbd, toKbd *kbdRdr.Keyboard) {
	for i := 0; i < len(fromKbd.LowerCase); i++ {
		fromRowLow := fromKbd.LowerCase[i]
		fromRowUp := fromKbd.UpperCase[i]
		toRowLow := toKbd.LowerCase[i]
		toRowUp := toKbd.UpperCase[i]

		outputRowMapping(fromRowUp, toRowUp)
		fmt.Println("")
		outputRowMapping(fromRowLow, toRowLow)

		fmt.Println("")
	}
}

// output upper/lower char mapping one after the other
func outputMapping1(fromKbd, toKbd *kbdRdr.Keyboard) {
	for i := 0; i < len(fromKbd.LowerCase); i++ {
		fromRowLow := fromKbd.LowerCase[i]
		fromRowUp := fromKbd.UpperCase[i]
		toRowLow := toKbd.LowerCase[i]
		toRowUp := toKbd.UpperCase[i]

		for i := 0; i < len(fromRowLow); i++ {
			// upper
			from := escape(fromRowUp[i])
			to := escape(toRowUp[i])
			if from == to {
				fmt.Printf("; %s::%s\n", from, to)
			} else {
				fmt.Printf("%s::%s\n", from, to)
			}
			// lower
			from = escape(fromRowLow[i])
			to = escape(toRowLow[i])
			if from == to {
				fmt.Printf("; %s::%s\n", from, to)
			} else {
				fmt.Printf("%s::%s\n", from, to)
			}
		}

		fmt.Println("")
	}
}

func main() {
	if len(os.Args) != 4 {
		fmt.Println("parameters: qwertyLayoutFile newLayoutFile includeFilename")
		fmt.Println(" use -- for includeFile if none is required")
		os.Exit(-1)
	}

	fromFilename := os.Args[1]
	toFilename := os.Args[2]
	includeFilename := os.Args[3]

	fromKbd := new(kbdRdr.Keyboard)
	err := fromKbd.ReadKeyboardFile(fromFilename)
	if err != nil {
		fmt.Println(err)
		os.Exit(-1)
	}

	toKbd := new(kbdRdr.Keyboard)
	err = toKbd.ReadKeyboardFile(toFilename)
	if err != nil {
		fmt.Println(err)
		os.Exit(-1)
	}

	fmt.Println("/*")
	fmt.Printf("From  (%s)\n", fromFilename)
	fmt.Println(fromKbd.String())

	fmt.Printf("\nTo  (%s)\n", toFilename)
	fmt.Println(toKbd.String())
	fmt.Println("\n*/\n")

	// check that they have the same layout
	if fromKbd.LayoutString() != toKbd.LayoutString() {
		fmt.Println("Error, the two keyboard must have the same layout")
		os.Exit(-1)
	}

	// output key mappings
	outputMapping(fromKbd, toKbd)

	// and #include, if requested
	if includeFilename != "--" {
		fmt.Printf("#Include %s\n", includeFilename)
	}
}
