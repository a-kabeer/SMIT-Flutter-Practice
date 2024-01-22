import 'dart:io';

void main() {
  //Q.17: Calculate and display the average of three numbers provided by the user.
  print("Enter First number");
  int number1 = int.parse(stdin.readLineSync()!);
  print("Enter Second number");
  int number2 = int.parse(stdin.readLineSync()!);
  print("Enter Third number");
  int number3 = int.parse(stdin.readLineSync()!);
  num result = (number1 + number2 + number3) / 3;
  print("Average of $number1,$number2 and $number3 is ${result.toStringAsFixed(2)}");
}