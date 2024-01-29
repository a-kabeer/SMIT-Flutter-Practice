import 'dart:io';

void main() {
  var row = 5;
  var space = " ";
  for (var i = 1; i < 5; i++) {
    for (var j = 1; i > j; j++) {
      stdout.write("${space * (row - 1)}");
    }
    print("*");
  }
}
