void main() {
  //Q.18: Create a map named "person" with the following key-value pairs: "name"as "John", "age" as 25, "isStudent" as true. Write a Dart code to check if the person is both a student and over 18 years old. Print "Eligible" if both conditions are true, otherwise print "Not eligible".
  List persons = [
    {"name": "John", "age": 14, "isStudent": true},
    {"name": "Doe", "age": 26, "isStudent": true},
    {"name": "Zaid", "age": 18, "isStudent": true},
    {"name": "Ibrahim", "age": 19, "isStudent": false},
    {"name": "Micheal", "age": 16, "isStudent": true}
  ];
  // Map person = {"name": "John", "age": 25, "isStudent": true};
  Iterable person =
      persons.where((e) => e["age"] >= 18 && e["isStudent"] == true);
  print(person);
}
