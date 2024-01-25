void main() {
  //Q 11: Write a Dart code that takes in a list and an integer n as parameters. The program should print a new list containing the first n elements from the original
  int a = firstValue([2, 1, 4, 6, 4, 8]);
  print(a);
}

int firstValue(List<int> numbers) {
  int firstNumber = numbers[0];
  return firstNumber;
}
