import 'dart:io';

void main() {
  marksheet(name: "Abdul Kabeer", marks: 50);
  marksheet(name: "Sameer", marks: 80, section: "B");
  // stdout.write("Enter Your Number for Table: ");
  // int num1 = int.parse(stdin.readLineSync()!);
  // table(num1);
}

table(int number) {
  for (var i = 1; i < 11; i++) {
    print("$number X $i = ${i * number}");
  }
}

marksheet({required String name, required int marks, String section = "A"}) {
  num percentage = (marks / 100) * 100;
  if (percentage > 50) {
    print("Name: $name is Passed with Percentage: $percentage from $section");
  } else {
    print("Name: $name is Failed with Percentage: $percentage from $section");
  }
}
