import 'dart:io';

void main() {
  var row = 4;
  var space = " ";
  for (var i = 1; i < row; i++) {
    stdout.write("${space * (row - i)}");
    for (var j = 1; j <= i; j++) {
      stdout.write("*$space");
    }
    print("");
  }
}
