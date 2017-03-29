// txt2autokey project
// Copyright 2016 Philippe Quesnel
// Licensed under the Academic Free License version 3.0
// see README !!
package main

import (
	"bufio"
	"fmt"
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

func (row KbdRow) String() string {
	return string(row)
}

func (row KbdRow) Equal(other KbdRow) bool {
	return string(row) == string(other)
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

func NewRow(line []byte) KbdRow {
	// remove all whitespace, end up with only the keys
	// nb: returns a copy, so we can just return this
	return KbdRow(re.ReplaceAllLiteral(line, nil))
}

//------

func main() {
	file, err := os.Open("cmk_moddh.txt")
	if err != nil {
		log.Fatal(err)
	}
	defer file.Close()

	scanner := bufio.NewScanner(file)
	for scanner.Scan() {
		line := scanner.Text()
		line2 := re.ReplaceAllLiteral([]byte(line), nil)
		if len(line2) > 0 {
			fmt.Printf("%s\n", line2)
		}
	}

	if err := scanner.Err(); err != nil {
		log.Fatal(err)
	}
}
