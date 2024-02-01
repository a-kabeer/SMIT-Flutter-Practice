void main() {
  Human obj = Human();
  print("${obj.eat()}");
  print("${obj.eat()}");
}

class Human {
  String name = "Abdul Kabeer";
  int age = 32;
  eat() {
    String name = "abc";
    return name;
  }

  sleep() {}
  study() {}
  teach() {}
}
