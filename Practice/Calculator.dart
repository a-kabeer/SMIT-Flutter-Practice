import 'dart:io';

void main() {
  // open file
  File file = File('practice/test2.csv');
  // read file
  String contents = file.readAsStringSync();
  // split file using new line
  // List<String> lines = contents.split('\n');
  print(contents.split('\n'));
  // print file
  // print('---------------------');
  // for (var line in lines) {
  //   print(line);
  // }
}
