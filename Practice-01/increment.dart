void main() {
  var a = 0;
  var abc = a++;
  abc = ++a;
  a = abc++;

  print(abc);
}
