void main() {
//Q.10: Write a Dart code that takes in a list of strings and removes any duplicate elements, returning a new list without duplicates. The order of elements in the new list should be the same as in the original list.
  List name = removeDuplicates(
      ["Ahmed", "Muhammad", "Taha", "Yasin", "Muzammil", "Taha", "Ahmed"]);
  print(name);
}

List removeDuplicates(List name) {
  List uniqueList = [];
  name.forEach((element) {
    if (!uniqueList.contains(element)) {
      uniqueList.add(element);
    } else {}
  });
  return uniqueList;
}
