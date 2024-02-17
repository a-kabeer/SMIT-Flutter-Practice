void main() {
  Studen obj = Studen();
  obj.displayInfo();
}

//polymorphism types dart no support overloading dart support overriding
class Person {
  String? name;
  int? age;
  displayInfo() {
    print("Name: $name");
    print("age: $age");
  }
}

class Studen extends Person {
  @override
  String get name => super.name = "";

  @override
  displayInfo() {
    print(super.displayInfo());
  }
}

class Teacher {}
