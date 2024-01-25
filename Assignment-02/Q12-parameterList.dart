void main() {
  //Q 11: Write a Dart code that takes in a list and an integer n as parameters. The program should print a new list containing the first n elements from the original
  List a = firstValue([2, 1, 4, 6, 4, 8]);
  print(a);
}

List firstValue(List<int> numbers) {
  List firstNumber = [];
  firstNumber.add(numbers[0]);
  return firstNumber;
}
