//Write a program that takes a list of student details as input, where each student is represented by a map containing their name, marks, section, and roll number. The program should determine the grade of each student based on their average score (assuming maximum marks for each subject is 100) and print the student's name along with their grade.
void main() {
  List<Map<String, dynamic>> studentDetails = [
    {
      'name': 'John',
      'marks': [80, 75, 90],
      'section': 'A',
      'rollNumber': 101
    },
    {
      'name': 'Emma',
      'marks': [95, 92, 88],
      'section': 'B',
      'rollNumber': 102
    },
    {
      'name': 'Ryan',
      'marks': [70, 65, 75],
      'section': 'A',
      'rollNumber': 103
    },
  ];
  int totalMarks = 0;
  num sum = 0;
  num count = 0;
  List<num> obtainedMarks = [];
  List<num> percentage = [];
  totalMarks = studentDetails.first['marks'].length * 100;
  for (var i = 0; i < studentDetails.length; i++) {
    for (var j = 0; count < studentDetails[j]["marks"].length; count++) {
      j = count.toInt();
      sum += studentDetails[i]["marks"][j];
    }
    obtainedMarks.add(sum);
    count = 0;
    sum = 0;
  }
  for (var i = 0; i < obtainedMarks.length; i++) {
    studentDetails[i].putIfAbsent('totalMarks', () => obtainedMarks[i]);
  }
  for (var i = 0; i < obtainedMarks.length; i++) {
    percentage.add((studentDetails[i]['totalMarks'] / totalMarks) * 100);
    studentDetails[i].putIfAbsent('percentage', () => percentage[i]);
  }
  for (var e in studentDetails) {
    if (e['percentage'] >= 80 && e['percentage'] <= 100) {
      print(
          "${e['name']} is passed by ${e['percentage'].toStringAsFixed(2)}% Grade: A+");
    } else if (e['percentage'] >= 70 && e['percentage'] < 80) {
      print(
          "${e['name']} is passed by ${e['percentage'].toStringAsFixed(2)}% Grade: A");
    } else if (e['percentage'] >= 60 && e['percentage'] < 70) {
      print(
          "${e['name']} is passed by ${e['percentage'].toStringAsFixed(2)}% Grade: B");
    }
  }
}
