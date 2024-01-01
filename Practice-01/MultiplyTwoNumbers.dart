import 'dart:io';

void main() {
  //Q.13: Calculate the area of a rectangle with user-entered length and width.
  print(
      "Enter Two Number Get Result in Multiplicatio & Also get result that wether multiplication is greater than 100 or not");
  print("Enter First Number");
  int number1 = int.parse(stdin.readLineSync()!);
  print("Enter Second Number");
  int number2 = int.parse(stdin.readLineSync()!);
  int result = number1 * number2;
  if (result > 100) {
    print(
        "Multiplication of $number1 & $number2 is $result & it is greater than 100");
  } else {
    print(
        "Multiplication of $number1 & $number2 is $result & It is not greater than 100");
  }
}