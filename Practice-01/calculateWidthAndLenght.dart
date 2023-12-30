import 'dart:io';

void main() {
  //Q.12: Multiply two numbers and check if the result is greater than 100.
  print("Enter Two Number Get Result of Rectangle Area");
  print("Enter First Number");
  int width = int.parse(stdin.readLineSync()!);
  print("Enter Second Number");
  int length = int.parse(stdin.readLineSync()!);
  int result = width * length;
  print("Area of Rectangle is $result");
}
