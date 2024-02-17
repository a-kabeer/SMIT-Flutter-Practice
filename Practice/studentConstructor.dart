void main() {
  Student obj = Student(name: "Bilal");
  obj.addGrade(course: "Science", grade: 3.5);
  obj.addGrade(course: "Math", grade: 3.0);
  obj.addGrade(course: "English", grade: 2.0);
  Student obj1 = Student(name: "Ali");
  obj1.addGrade(course: "Science", grade: 3.5);
  obj1.addGrade(course: "Math", grade: 4.0);
  obj1.addGrade(course: "English", grade: 3.0);

  obj.grades.forEach((key, value) {
    print("Subject: $key GPA: $value");
  });
  print("${obj1.name} has got ${obj.calculateGPA()} GPA\n-----------------");
  obj1.grades.forEach((key, value) {
    print("Subject: $key GPA: $value");
  });
  print("${obj.name} has got ${obj.calculateGPA()} GPA");
}

class Student {
  String name = "";
  Map<String, double> grades = {};
  Student({required this.name});
  void addGrade({required String course, required double grade}) {
    grades[course] = grade;
  }

  calculateGPA() {
    if (grades.isEmpty) {
      return 0.0;
    }
    double sum=0;
    grades.forEach((key, value) {
      sum += value;
    });
    // double gpa = sum / grades.length;
    return sum / grades.length;
  }
}
