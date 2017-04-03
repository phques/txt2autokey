// txt2autokey project
// Copyright 2017 Philippe Quesnel
// Licensed under the Academic Free License version 3.0

package kbdRdr

import (
	"strings"
	"testing"
)

func TestKbdRow(t *testing.T) {
	row1 := NewRow([]byte(" 1 2 a c  d \n"))

	// check internal representation
	expStr := "12acd"
	resStr := string(row1)
	if resStr != expStr {
		t.Errorf("Expected internal row string '%s' got '%s'", expStr, resStr)
	}

	// check equality
	row2 := NewRow(row1)
	if !row1.Equal(row2) {
		t.Error("Expected", row1, "=", row2)
	}
	if !row2.Equal(row1) {
		t.Error("Expected", row1, "=", row2)
	}

	row1 = NewRow([]byte("abcd"))
	if row1.Equal(row2) {
		t.Error("Expected", row1, "!=", row2)
	}

	//check String
	expStr = "a b c d"
	resStr = row1.String()
	if resStr != expStr {
		t.Errorf("Expected row string '%s' got '%s'", expStr, resStr)
	}

	row2 = NewRow([]byte(""))
	expStr = ""
	resStr = row2.String()
	if resStr != expStr {
		t.Errorf("Expected row string '%s' got '%s'", expStr, resStr)
	}

}

func TestKbdRows(t *testing.T) {
	var rows KbdRows = nil

	row0 := NewRow([]byte("1234"))
	row1 := NewRow([]byte("5678"))

	// check that row is added
	rows = rows.AddRow(row0)
	if len(rows) != 1 {
		t.Error("Expected len() == 1, got", len(rows))
	}

	rows = rows.AddRow(NewRow(row1))
	if len(rows) != 2 {
		t.Error("Expected len() == 2, got", len(rows))
	}

	// check that rows are added in correct orde
	if !rows[0].Equal(row0) {
		t.Error("rows[0] != row0")
	}
	if !rows[1].Equal(row1) {
		t.Error("rows[1] != row1")
	}

	// test equality
	var rows2 KbdRows = nil
	rows2 = rows2.AddRow(row0)
	rows2 = rows2.AddRow(row1)
	if !rows.Equal(rows2) {
		t.Error("Expected rows == rows2")
	}
	// <> len
	rows2 = rows2.AddRow(row1)
	if rows.Equal(rows2) {
		t.Error("Expected rows != rows2")
	}

	// <> content
	rows2 = nil
	rows2 = rows2.AddRow(row1)
	rows2 = rows2.AddRow(row0)
	if rows.Equal(rows2) {
		t.Error("Expected rows != rows2")
	}

	//check String
	expStr := "1 2 3 4\n5 6 7 8"
	resStr := rows.String()
	if resStr != expStr {
		t.Errorf("Expected rows string '%s' got '%s'", expStr, resStr)
	}

	expStr = "1 2 3 4\n5 6 7 8"
	resStr = rows.String()
	if resStr != expStr {
		t.Errorf("Expected rows string '%s' got '%s'", expStr, resStr)
	}

	rows = nil
	expStr = ""
	resStr = rows.String()
	if resStr != expStr {
		t.Errorf("Expected rows string '%s' got '%s'", expStr, resStr)
	}

	// test LayoutString
	expStr = "4,4"
	resStr = rows2.LayoutString()
	if resStr != expStr {
		t.Errorf("Expected rows layout string '%s' got '%s'", expStr, resStr)
	}
}

func TestKeyboard1(t *testing.T) {
	// read a kbd def from string, missing 1 char/row in lower case rows
	kbdDefStr :=
		`	Q W E R T Y
			A S D F G		
			
			q w e r t 
			a s d f`

	kbd := new(Keyboard)
	rdr := strings.NewReader(kbdDefStr)
	err := kbd.ReadKeyboardDefinition(rdr)
	if err == nil {
		t.Error("Expecting error creating kbd from bad layout string")
	}
}

func TestKeyboard2(t *testing.T) {
	// read a kbd def from string
	kbdStr :=
		`	Q W E R T Y
			A S D F G		
			Z X C V
			
			q w e r t y
			a s d f g
			z x c v`

	kbd := new(Keyboard)
	rdr := strings.NewReader(kbdStr)
	err := kbd.ReadKeyboardDefinition(rdr)
	if err != nil {
		t.Errorf("error creating kbd from string: %v", err)
	}

	// test layout string
	expStr := "6,5,4"
	resStr := kbd.LayoutString()
	if resStr != expStr {
		t.Errorf("Expected kbd layout string %q, got %q", expStr, resStr)
	}

}
