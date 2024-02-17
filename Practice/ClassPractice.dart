class A {
  int? _private;

  int? a;
  int b = 1;

  final int c = 2;

  late int d;
  late final int e;
  late final int f = 5;

  static int g = 6;
  static late int h;
  static late int i = 0;
  static late final int j;

  static const int k = 10;
}

void main() {
  A obj = A();
  print(obj.a);
  print(obj.b);
  // obj.c=5;
  print(obj.c);
  obj.d = 1;
  print(obj.d);
  obj.e = 5;
  print(obj.e);
  print(obj.f);

  print(A.g);
  A.h = 4;
  print(A.h);
  A.j = 33;

  print(A.j);
// A.k=33;z

  print(A.k);
}
