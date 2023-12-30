import 'dart:io';

void main() {
  //Q.18: Determine whether a year entered by the user is a leap year or not.
  print("Enter year");
  int year = int.parse(stdin.readLineSync()!);
  if ((year % 4 == 0 && year % 100 != 0) || year % 400 == 0) {
    print("$year is leap");
  } else {
    print("$year is not leaf year");
  }
}
