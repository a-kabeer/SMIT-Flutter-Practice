void main() {
  Person obj = Person("Bilal", 16);
  obj.displayInfo();
}

class Person {
  String? name;
  int? age;
  //parametrize
  Person(this.name, this.age);
  displayInfo() {
    print("Name: $name");
    print("age: $age");
  }

//class call hogai.
  // Person() {
  //   print("Class call hogai");
  // }
}
