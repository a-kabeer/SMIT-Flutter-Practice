import 'dart:io';

void main (){
  print("Enter your desire table");
  int table = int.parse(stdin.readLineSync()!);
  print ("table of $table");
  for (var i = 1; i < 10; i= i+1) {
    print("$table X $i = ${table*i}");
  }
}