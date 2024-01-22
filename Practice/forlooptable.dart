void main() {
  List studentName = [
    "1. Zaid",
    "2. Adeel",
    "3. Sameer",
    "4. Kabeer",
    "5. Javed",
    "6. Asad",
    "7. Ali",
    "8. Zahid",
    "9. Yousuf",
  ];
  print("Odd List\n");
  for (var i = 0; i < studentName.length;  i+=2) {
    print(studentName[i]);
  }
  print("\n============\n\nEven List\n");
  for (var i = 1; i < studentName.length; i+=2) {
    print(studentName[i]);
  }
  // print("==============");
  // for (var e in studentName) {
  //   print(e);
  // }
}
//list 7 8 element store
//print even element only

