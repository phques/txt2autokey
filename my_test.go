// txt2autokey project
// Copyright 2016 Philippe Quesnel
// Licensed under the Academic Free License version 3.0
// see README !!
package main

import "testing"

func TestKbdRow(t *testing.T) {
	row1 := NewRow([]byte(" 1 2 a c  d \n"))

	// check internal representation
	expStr := "12acd"
	resStr := row1.String()
	if resStr != expStr {
		t.Error("Expected row string", expStr, "got", resStr)
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
}

func TestKbdRows(t *testing.T) {
	var rows KbdRows = nil

	row0 := NewRow([]byte("1234"))
	row1 := NewRow([]byte("5678"))

	// check that row is correctly added
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
}
