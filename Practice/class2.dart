void main() {
  MyClass obj = MyClass();
  // print(obj.add(2, 5));
}

class MyClass {
  MyClass() {
    print("object");
  }
  int add(int a, int b) {
    int sum = a + b;
    return sum;
  }
}
