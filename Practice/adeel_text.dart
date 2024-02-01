import 'dart:io';

void main() {
  String? input = stdin.readLineSync();
  int number = int.parse(input ?? "");
  print(number);
}
