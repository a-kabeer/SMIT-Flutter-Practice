//Write a program to make such a pattern as a pyramid with an asterisk.
//    *
//   * *
//  * * *
// * * * *
import 'dart:io';

void main() {
  int count = 1;
  int row = 5;
  String space = " ";
  for (var i = 0; i < row; i++) {
    stdout.write("${space * (row - i)}");
    for (var j = 1; i >= j; j++) {
      stdout.write("$space*");
    }
    print("");
  }
}
