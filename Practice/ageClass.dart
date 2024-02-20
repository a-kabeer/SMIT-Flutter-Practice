import 'dart:io';

import 'ClassPractice.dart';

class Age {
  int? age;
  Age() {
    eligibleOrNot();
  }
  eligibleOrNot() {
    stdout.write('Enter your age: ');
    int? age = int.tryParse(stdin.readLineSync()!);
    if (age == null) {
      print('please enter a valid number');
    } else {
      if (age < 18) {
        print('you are not eligible');
      } else {
        print('you are eligible');
      }
    }
  }
}

void main() {
  Age age = Age();
}
