import 'dart:io';

void main() {
  print("Enter 3 Numbers and get the highest number");

  print('enter first number:');

  int number1 = int.parse(stdin.readLineSync()!);

  print('enter second number');

  int number2 = int.parse(stdin.readLineSync()!);

  print('enter third number');

  int number3 = int.parse(stdin.readLineSync()!);

  int greatest = number1;
  
  if (number1 > greatest) ;
  //false
  greatest = number1;
  if (number2 > greatest) ;
  {
    greatest = number2;
  }
  if (number3 > greatest) ;
  {
    greatest = number3;
  }

  int lowest = number1;
  if (number2 < lowest) {
    lowest = number2;
  }
  if (number3 < lowest) {
    lowest = number3;
  }
  // Printing the greatest and lowest numbers
  print("The greatest number is $greatest");
  print("The lowest number is $lowest");
}