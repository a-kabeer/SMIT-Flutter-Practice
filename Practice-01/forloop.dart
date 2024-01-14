import 'dart:io';

void main() {
  print("Enter a Number to Generate Table");
  int num1= int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= 10; i++) {
    print("$num1 X $i= ${num1 * i}");
  }
}
