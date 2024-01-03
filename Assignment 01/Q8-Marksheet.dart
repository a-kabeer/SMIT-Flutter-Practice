void main() {
  //Q8: Create a marksheet using operators of at least 5 subjects and output should have Student Name, Student Roll Number, Class, Percentage, Grade Obtained etc. i.e: Percentage should be rounded upto 2 decimal places only.
  String stdName = "Abdul Kabeer";
  int stdRollNo = 181902;
  String className = "SMIT - Flutter";
  int totalMarks = 500;
  int science = 70, english = 75, math = 80, islamiat = 70, urdu = 90;
  int obtainedMarks = science + english + math + islamiat + urdu;
  num percentage = (obtainedMarks / totalMarks) * 100;
  if (percentage >= 80 && percentage <= 100) {
    String normalizePercentage = percentage.toStringAsFixed(2) + "%";
    print(
        "Roll no: $stdRollNo\nName: $stdName\nClass: $className\nObtained Marks: $obtainedMarks/$totalMarks\nPercentage: $normalizePercentage\nGrade: A+\nStatus: Passed");
  } else if (percentage >= 70 && percentage <= 79) {
    String normalizePercentage = percentage.toStringAsFixed(2) + "%";
    print(
        "Roll no: $stdRollNo\nName: $stdName\nClass: $className\nObtained Marks: $obtainedMarks/$totalMarks\nPercentage: $normalizePercentage\nGrade: A\nStatus: Passed");
  } else if (percentage >= 60 && percentage <= 69) {
    String normalizePercentage = percentage.toStringAsFixed(2) + "%";
    print(
        "Roll no: $stdRollNo\nName: $stdName\nClass: $className\nObtained Marks: $obtainedMarks/$totalMarks\nPercentage: $normalizePercentage\nGrade: B\nStatus: Passed");
  } else if (percentage >= 50 && percentage <= 59) {
    String normalizePercentage = percentage.toStringAsFixed(2) + "%";
    print(
        "Roll no: $stdRollNo\nName: $stdName\nClass: $className\nObtained Marks: $obtainedMarks/$totalMarks\nPercentage: $normalizePercentage\nGrade: C\nStatus: Passed");
  } else if (percentage >= 40 && percentage <= 49) {
    String normalizePercentage = percentage.toStringAsFixed(2) + "%";
    print(
        "Roll no: $stdRollNo\nName: $stdName\nClass: $className\nObtained Marks: $obtainedMarks/$totalMarks\nPercentage: $normalizePercentage\nGrade: D\nStatus: Passed");
  } else {
    String normalizePercentage = percentage.toStringAsFixed(2) + "%";
    print(
        "Roll no: $stdRollNo\nName: $stdName\nClass: $className\nObtained Marks: $obtainedMarks/$totalMarks\nPercentage: $normalizePercentage\nGrade: F\nStatus: Failed");
  }
}