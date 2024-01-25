void main() {
  // print("loop start");
  
  // for (var i = 1; i < 11; i++) {
  //  print(2*i); 
  // }

  //i = 0
  //i = 1
  // print("loop end");
  //Table
  // print("Enter a Number to Generate Table");
  // int num1 = int.parse(stdin.readLineSync()!);
  // for (int i = 1; i <= 10; i++) print("$num1 X $i= ${num1 * i}");

  // List Data
//   List<String> studentName = [
//     "Abu Bakr",
//     "Umar",
//     "Usman",
//     "Ali",
//     "Talha",
//     "Zubair",
//     "Abdur Rehman",
//     "Bilal",
//     "Abdul Kabeer",
//     "Adeel",
//     "Zahid"
//   ];
//   studentName.sort();
//   var a = studentName.reversed;
//   for (int i = 0; i <= studentName.length - 1; i++) {
//     print(a.toList()[i]);
//   }
  List id = [2, 1, 5, 7, 4, 2, 4, 6, 8, 9, 6, 5, 4, 32, 2];
  List evenNumber = [];
  List oddNumber = [];
  print(id[0]);
  for (int a = 0; a < id.length; a++) {
    if (id[a] % 2 == 0) {
      evenNumber.add(id[a]);
    } else {
      oddNumber.add(id[a]);
    }
  }
  print("Even Numbers are $evenNumber");
  print("Odd Numbers are $oddNumber");
}
