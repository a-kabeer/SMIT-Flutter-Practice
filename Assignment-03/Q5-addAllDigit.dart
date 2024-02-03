//Write a program that calculates the sum of all the digits in a given number using a while loop.
//Example:
//Input: 12345
//Output: Sum of digits: 15
void main() {
  String number = "1234567";
  int num1 = 0;
  int count = 0;
  while (count < number.length + 1) {
    num1 += count;
    count++;
  }
  print(num1);
}
