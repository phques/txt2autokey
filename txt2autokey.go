// txt2autokey project
// Copyright 2017 Philippe Quesnel
// Licensed under the Academic Free License version 3.0
package main

import (
	"bufio"
	"bytes"
	"fmt"
	"io"
	"log"
	"os"
	"regexp"
)

/*
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

*/

// remove all whitespace, keeps only the keys
var re = regexp.MustCompile(`\s+`)

//----------

// all the (same case) characters of one kbd row
type KbdRow []byte

// all rows (same case) of a kbd
type KbdRows []KbdRow

// Keyboard holds both upper and lower case
type Keyboard struct {
	UpperCase KbdRows
	LowerCase KbdRows
}

//-------

//func (row KbdRow) String() string {
//	return string(row)
//}

func (row KbdRow) Equal(other KbdRow) bool {
	return string(row) == string(other)
}

func NewRow(line []byte) KbdRow {
	// remove all whitespace, end up with only the keys
	// nb: returns a copy, so we can just return this
	return KbdRow(re.ReplaceAllLiteral(line, nil))
}

// return row separated with spaces
func (row KbdRow) String() string {
	if len(row) == 0 {
		return ""
	}

	line := make([]byte, len(row)*2)
	for i := 0; i < len(row); i++ {
		line[i*2] = row[i]
		line[i*2+1] = ' '
	}

	// strip last space
	return string(line[:len(line)-1])
}

//----

func (rows KbdRows) AddRow(row KbdRow) KbdRows {
	return append(rows, row)
}

func (rows KbdRows) Equal(others KbdRows) bool {
	if len(rows) != len(others) {
		return false
	}

	for i := 0; i < len(rows); i++ {
		if !rows[i].Equal(others[i]) {
			return false
		}
	}

	return true
}

func (rows KbdRows) String() string {
	if rows == nil || len(rows) == 0 {
		return ""
	}

	// concat rows string()
	var buffer bytes.Buffer
	for _, row := range rows {
		buffer.WriteString(row.String())
		buffer.WriteString("\n")
	}

	// strip last return
	text := buffer.String()
	return string(text[:len(text)-1])

}

//------

func (kbd *Keyboard) String() string {
	return kbd.UpperCase.String() + "\n\n" +
		kbd.LowerCase.String()
}

// CheckLayout returns an error if the upper and lower rows have
// different shapes
func (kbd *Keyboard) CheckLayout() error {
	// check nbr rows
	if len(kbd.UpperCase) != len(kbd.LowerCase) {
		return fmt.Errorf("upper and lower parts have different nbr rows")
	}
	if len(kbd.UpperCase) == 0 {
		return fmt.Errorf("no rows found!")
	}

	// check that all rows have same length
	for i := 0; i < len(kbd.LowerCase); i++ {
		if len(kbd.LowerCase) != len(kbd.UpperCase) {
			return fmt.Errorf("rows %d len = %d %d",
				i+1, len(kbd.UpperCase), len(kbd.LowerCase))
		}
	}

	return nil
}

// ReadKeyboardFile reads a keyboard definition from a reader
func (kbd *Keyboard) ReadKeyboardDefinition(rdr io.Reader) error {
	scanner := bufio.NewScanner(rdr)
	readingUpper := true

	for scanner.Scan() {
		// read line, convert to row
		line := scanner.Text()
		row := NewRow([]byte(line))

		// empty line?
		if len(row) == 0 {
			// skip initial blank lines
			if len(kbd.UpperCase) == 0 {
				continue
			}

			// if lower case rows already done, stop
			if !readingUpper {
				break
			} else {
				// done with upper case rows, switch to lower
				readingUpper = false
				continue
			}
		}

		// add new row
		if readingUpper {
			kbd.UpperCase = kbd.UpperCase.AddRow(row)
		} else {
			kbd.LowerCase = kbd.LowerCase.AddRow(row)
		}
	}

	if err := scanner.Err(); err != nil {
		log.Fatal(err)
	}

	return kbd.CheckLayout()
}

// ReadKeyboardFile reads a keyboard definition from a file
func (kbd *Keyboard) ReadKeyboardFile(filename string) error {
	// open the file
	file, err := os.Open(filename)
	if err != nil {
		return err
	}
	defer file.Close()

	return kbd.ReadKeyboardDefinition(file)
}

//------

func main() {
	kbd := new(Keyboard)
	err := kbd.ReadKeyboardFile("cmk_moddh.txt")
	if err == nil {
		fmt.Println(kbd.String())
	} else {
		fmt.Println(err)
	}
}
