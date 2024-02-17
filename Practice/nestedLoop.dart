void main() {
  table();
}

table() {
  for (var i = 1; i <= 10; i++) {
    print("Table of $i");
    print("---------------");
    for (var j = 1; j <= 10; j++) {
      print("$i X $j = ${i * j}");
    }
    print("---------------");
  }
}
