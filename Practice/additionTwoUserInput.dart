import 'dart:io';

void main() {
  //Q.11: Add two user-provided numbers and display the sum.
  print("Enter Two Number and Get Sum of Those numbers");
  print("Enter First Number");
  int number1 = int.parse(stdin.readLineSync()!);
  print("Enter Second Number");
  int number2 = int.parse(stdin.readLineSync()!);
  int result = number1 + number2;
  print("$number1 + $number2 = $result");
}