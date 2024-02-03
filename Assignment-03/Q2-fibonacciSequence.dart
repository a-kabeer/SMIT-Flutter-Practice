import 'dart:io';

//Write a program that prints the Fibonacci sequence up to a given number using a for loop.
//Example:
//Input: 10
//Output: 0 1 1 2 3 5 8
void main() {
  int number = 10;
  int a = 0;
  int b = 1;
  int nth = 0;
  int count = 0;
  while (count <= number) {
    stdout.write("$a ");
    nth = a + b;
    a = b;
    b = nth;
    count++;
  }
}
