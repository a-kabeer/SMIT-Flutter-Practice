//Write a program that takes a list of integers as input and returns a new list containing only the prime numbers from the original list. Implement the solution using a for loop and logical operations.
//Input: [4, 7, 10, 13, 16, 19, 22, 25, 28, 31]
//Output: [7, 13, 19, 31]

void main() {
  // Filtering prime numbers
  List<int> primeNumbers = filterPrimes([2, 3, 4, 5, 6, 7, 8, 9, 10, 121]);

  // Printing the result
  print(primeNumbers);
}

// Function to check if a number is prime
bool isPrime(int number) {
  if (number < 2) {
    return false;
  }
  // num result;
  for (int i = 2; i <= number ~/ i; i++) {
    print("$number / $i : ${number ~/ i}");
    print("$number / $i : ${number % i == 0}");
    if (number % i == 0) {
      print("=======");
      return false;
    }
  }
  print("Prime: $number");
  print("*****");
  return true;
}

// Function to filter prime numbers from a list
List<int> filterPrimes(List<int> numbers) {
  List<int> primeNumbers = [];
  for (int number in numbers) {
    if (isPrime(number)) {
      primeNumbers.add(number);
    }
  }
  return primeNumbers;
}
