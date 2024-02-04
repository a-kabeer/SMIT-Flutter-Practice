//Write a program that takes a list of numbers as input and prints thenumbers greater than 5 using a for loop and if-else condition.
import 'dart:io';

void main() {
  List number = [4, 2, 4, 6, 8, 9, 0, 3, 7, 6, 10];
  for (var e in number) {
    if (e > 5) {
      stdout.write("$e ");
    }
  }
}
