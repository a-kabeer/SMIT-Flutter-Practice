import 'dart:io';

void main() {
  //Q10: Write a program that takes three numbers from the user and prints the greatest number & lowest number.
  print("Enter 3 Numbers and get the Highest number & the Lowest Number");
  print("Enter First Number:");
  int number1 = int.parse(stdin.readLineSync()!);
  print("Enter Second Number:");
  int number2 = int.parse(stdin.readLineSync()!);
  print("Enter Third Number:");
  int number3 = int.parse(stdin.readLineSync()!);
  int highest, lowest;
  if (number1 > number2 && number1 > number3) {
    highest = number1;
  } else if (number2 > number3) {
    highest = number2;
  } else {
    highest = number3;
  }
  if (number1 < number2 && number1 < number3) {
    lowest = number1;
  } else if (number2 < number3) {
    lowest = number2;
  } else {
    lowest = number3;
  }
  print("Highest: $highest Lowest: $lowest");
}
