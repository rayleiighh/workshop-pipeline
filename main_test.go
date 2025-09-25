package main

import "testing"

func TestAdd(t *testing.T) {
	res := Add(1, 2)

	if res != 3 {
		t.Error("Add is not working")
	}
}

func TestSub(t *testing.T) {
	res := Sub(5, 2)

	if res != 3 {
		t.Error("Sub is not working")
	}
}
