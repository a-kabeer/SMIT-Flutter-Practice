import 'dart:io';

void main (){
String table1 = table(table: 3);
print(table1);
}
table({required int table}){
print("Enter your desire table");
  int table = int.parse(stdin.readLineSync()!);
    String result ='';
  print ("table of $table");
  for (var i = 1; i <= 10; i++) {
    result += "$table X $i = ${table*i}\n";
  }
  return result;
}