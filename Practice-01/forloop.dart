import 'dart:io';

void main() {
  //Table
  print("Enter a Number to Generate Table");
  int num1= int.parse(stdin.readLineSync()!);
    for (int i = 1; i <= 10; i++)
    print("$num1 X $i= ${num1 * i}");
  
  // List Data
  List<String> studentName= ["Abu Bakr","Umar","Usman","Ali","Talha","Zubair","Abdur Rehman","Bilal","Abdul Kabeer","Adeel","Zahid"];
   studentName.sort();
   var a =studentName.reversed;
      for (int i = 0; i <= studentName.length-1; i++) {
    print(a.toList()[i]);
  
  }
  }
