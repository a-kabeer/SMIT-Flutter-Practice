//Write a program that calculates the sum of the squares of all odd numbers in a given list using a for loop and if-else condition.
void main() {
  oddNumberSquare(numbers: [2, 3, 5, 6, 2, 1, 88, 65, 43, 24, 42]);
}

oddNumberSquare({required List<int> numbers}) {
  for (var e in numbers) {
    if (e.isOdd) {
      print("Square of $e = ${e * e}");
    }
  }
}
