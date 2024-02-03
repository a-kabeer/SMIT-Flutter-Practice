//Write a program to make such a pattern like a right angle triangle with a number which will repeat a number in a row.
//The pattern like :
//1
//22
//333
//4444
import 'dart:io';

void main() {
  for (var i = 0; i < 5; i++) {
    for (var j = 1; i >= j; j++) {
      stdout.write(i);
    }
    print("");
  }
}
