void main() {
  List test = ["adeel", "zahid", "kabeer", "abdullah"];
  List <int>test2 = [1, 2, 11, 5, 4, 7, 9];
  print(test);
  test.replaceRange(test.length - 1, test.length,
      ["ibrahim", "samad", "fareed", "sameer", "naseer", "muneer"]);
  test.sort();
  test.add("abu bakr");
  test.addAll(["umar","usman","ali"]);
  test.insert(0,"Zaid");
   print(test);
   print(test.reversed.toList());
  test2.sort();
  print(test2);
  print(test2.reversed.toList());
//test2.removeWhere((e) => e>=5);
  test2.retainWhere((e) => e<=5);
  print(test2);
  
}
