void main() {
  //Q.17: Given a list of integers, write a Dart code that uses the map() method to create a new list with each value squared. The program should take in the original list as a parameter and print the new list.
  List numbers = squared([2, 1, 6, 7, 9, 5, 3, 2]);
  print(numbers);
}

List squared(List numbers) {
  List newList = numbers.map((e) => e * e).toList();
  return newList;
}
