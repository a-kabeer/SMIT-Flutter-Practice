//Write a program to make a pyramid pattern with numbers increased by
//    1
//   2 3
//  4 5 6
// 7 8 9 10
import 'dart:io';

void main() {
  int count = 1;
  int row = 5;
  String space = " ";
  for (var i = 0; i < row; i++) {
    stdout.write("${space * (row - i)}");
    for (var j = 1; i >= j; j++) {
      stdout.write("$space${count++}");
    }
    print("");
  }
}
