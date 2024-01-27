void main() {
  List<int> tableOf = [2, 5, 6, 7, 8, 3];
  for (var i = 0; i < tableOf.length; i++) {
    table(tableOf[i]);
  }
}

table(num number) {
  for (var i = 1; i < 11; i++) {
    print("$number X $i = ${number * i}");
  }
}
