void main() {
  Student obj = Student(name: "abc", age: 1);
  obj.displayInfo();
}

class Person {
  String? name;
  int? age;
  Person({this.name, this.age});
  displayInfo() {
    print("Name: $name");
    print("Age: $age");
  }
}

class Student extends Person {
  Student({required String name, required int age})
      : super(name: name, age: age);
}

class Teacher {}
