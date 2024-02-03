//Write a program to display a pattern like a right angle triangle using an asterisk using loop.
//The pattern like :
//*
//**
//***
//****
import 'dart:io';

void main() {
  for (var i = 0; i < 4; i++) {
    for (var j = 0; i > j; j++) {
      stdout.write("*");
    }
    print("*");
  }
}
