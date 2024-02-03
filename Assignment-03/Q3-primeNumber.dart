import 'dart:io';
import 'dart:math';

//Implement a code that checks whether a given number is prime or not.
//Example:
//Input: 17
//Output: 17 is a prime number.
void main() {
  print(isPrime(5));
}

isPrime(int number) {
  bool isPrime = true;
  if (number <= 1) {
    return "$number Not Prime Nor Composite";
  } else {
    for (var i = 2; i <= number ~/ 2; i++) {
      if (number % i == 0) {
        isPrime = false;
        break;
      }
    }
  }
  if (isPrime) {
    return "$number is Prime";
  } else {
    return "$number is not prime";
  }
}
