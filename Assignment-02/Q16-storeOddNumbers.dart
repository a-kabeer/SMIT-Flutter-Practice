void main() {
  List numbers = oddNumbers([5, 1, 4, 5, 6, 7]);
  print(numbers);
}

List oddNumbers(List numbers) {
  Iterable checkOdd = numbers.where((e) => e % 2 == 1);
  return checkOdd.toList();
}