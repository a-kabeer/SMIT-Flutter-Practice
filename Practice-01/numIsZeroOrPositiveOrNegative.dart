import 'dart:io';

void main() {
  //Q.14: Determine if a given number is positive, negative, or zero.
  print(
      "Enter a Number Get result that enter number is positive negative or zero");
  print("Enter Your Desire Number");
  int num1 = int.parse(stdin.readLineSync()!);
  if (num1 == 0) {
    print("$num1 is Zero");
  } else if (num1 > 0) {
    print("$num1 is Positive");
  } else if (num1 < 0) {
    print("$num1 is Negative");
  }
}
