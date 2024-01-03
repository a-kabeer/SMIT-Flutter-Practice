void main() {
  //Q9: Check if the number is even or odd, If number is even then check if this is divisible by 5 or not & if number is odd then check if this is divisible by 7 or not.
  int number = 35;
  if (number % 2 == 0) {
    //Number is Even
    if (number % 5 == 0) {
      print("$number is Even and divisible by 5");
    } else {
      print("$number is Even but not divisible by 5");
    }
  } else {
    //Number is Odd
    if (number % 7 == 0) {
      print("$number is Odd and divisible 7");
    } else {
      print("$number is Odd but not divisible 7");
    }
  }
}