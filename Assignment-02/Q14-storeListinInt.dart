void main() {
  //Q.14: Write a Dart code that takes in a list of integers and prints a new list withthe elements sorted in ascending order. The original list should remain unchanged.
  List numbers = [55, 22, 56, 31, 44, 7, 97, 5, 2, 34];
  List sortedNumber = List.from(numbers)..sort();
  print(sortedNumber);
  print(numbers);
}
