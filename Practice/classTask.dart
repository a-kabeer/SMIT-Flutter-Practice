void main() {
  List elemenets = [4, 6, 4, 3, 2, 6, 8, 9, 3, 5];
  List n1 = [];
  for (var i = 0; i < 4; i++) {
    n1.add(elemenets[i]);
  }
  print(n1);
  List n = [2, -2, 5, -1, 5, 7, 3, -5, 0];
  int positive = 0;
  int negative = 0;
  for (var i = 0; i < n.length; i++) {
    if (n[i] > 0) {
      ++positive;
    } else {
      ++negative;
    }
  }
  print("Postive: $positive\nNegative: $negative");
}
