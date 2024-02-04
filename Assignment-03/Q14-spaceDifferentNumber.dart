//Write a program to make such a pattern like a right angle triangle with the number increased by 1 using loop..
//The pattern like :
//1
//2 3
//4 5 6
//7 8 9 10
import 'dart:io';

void main() {
  int count = 1;
  String space = " ";
  for (var i = 0; i < 5; i++) {
    for (var j = 1; i >= j; j++) {
      stdout.write("${count++} ");
    }
    print("");
  }
}
