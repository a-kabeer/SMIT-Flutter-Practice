void main() {
  int a = greatest([2, 1, 4, 6, 4, 8]);
  print(a);
}

int greatest(List numbers) {
  numbers.sort();
  int greatestNumber = numbers.last;
  return greatestNumber;
}
