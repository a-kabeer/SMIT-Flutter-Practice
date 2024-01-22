import 'dart:io';

void main() {
  //Q.16: Take a character input from the user and check whether it is an uppercase letter, lowercase letter, digit, or a special character.
  print("Enter Digit,Alphabet or special character");
  String? input = stdin.readLineSync()!; // Reading the input from the user
  int asciiCode = input.codeUnitAt(0);
  if (asciiCode >= 97 && asciiCode <= 122) {
    print("$input is small letter");
  } else if (asciiCode >= 65 && asciiCode <= 90) {
    print("$input is Capital letter");
  } else if (asciiCode >= 48 && asciiCode <= 57) {
    print("$input is Digit");
  } else {
    print("$input is special character");
  }
}