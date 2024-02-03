//Write a program to display a pattern like a right angle triangle with a number using loop.
//The pattern like :
//1
//12
//123
//1234
import 'dart:io';

void main() {
  for (var i = 0; i < 5; i++) {
    for (var j = 1; i >= j; j++) {
      stdout.write(j);
    }
    print("");
  }
}
