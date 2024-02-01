void main() {
  var abc = sumOfInteger();
  print(abc);
}

sumOfInteger({int? number1, int number2=98}) {
  int result = (number1 ?? 0) + number2;
  return result;
}
