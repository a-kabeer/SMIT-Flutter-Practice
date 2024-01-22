void main() {
  // List<String> studentName= ["Abu Bakr","Umar","Usman","Ali","Talha","Zubair","Abdur Rehman","Bilal","Abdul Kabeer","Adeel","Zahid"];
  List id = [2, 1, 5, 7, 4, 2, 4, 6, 8, 9, 6, 5, 4, 32, 2];
  List evenNumber = [];
  List oddNumber = [];
  for (var e in id) {
    if (e % 2 == 0) {
      evenNumber.add(e);
    } else {
      oddNumber.add(e);
    }
  }
  print("Even Numbers are $evenNumber");
  print("Odd Numbers are $oddNumber");
}
