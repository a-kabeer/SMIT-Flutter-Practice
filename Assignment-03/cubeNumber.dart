void main() {
  cubeNumber(number: 10);
}

cubeNumber({int? number}) {
  number = number ?? 0;
  int a = 0;
  for (var i = 0; i <= number; i++) {
    a = number - (number - i);
    print("$a: cube is = ${a * a * a}");
  }
}
