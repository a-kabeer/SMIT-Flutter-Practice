void main() {
  String name = "Abdul Kabeer";
  int totalMarks = 500;
  int science = 70, english = 75, math = 80, islamiat = 70, urdu = 90;
  int obtainedMarks = science + english + math + islamiat + urdu;
  num percentage = (obtainedMarks / totalMarks) * 100;
  if (percentage >= 80 && percentage <= 100) {
    String normalizePercentage = percentage.toStringAsFixed(2) + "%";
    print(
        "$name has got $obtainedMarks out of $totalMarks, percentage $normalizePercentage and passed with A+ Grade");
  } else if (percentage >= 70 && percentage <= 79) {
    String normalizePercentage = percentage.toStringAsFixed(2) + "%";
    print(
        "$name has got $obtainedMarks out of $totalMarks, percentage $normalizePercentage and passed with A Grade");
  } else if (percentage >= 60 && percentage <= 69) {
    String normalizePercentage = percentage.toStringAsFixed(2) + "%";
    print(
        "$name has got $obtainedMarks out of $totalMarks, percentage $normalizePercentage and passed with B Grade");
  } else if (percentage >= 50 && percentage <= 59) {
    String normalizePercentage = percentage.toStringAsFixed(2) + "%";
    print(
        "$name has got $obtainedMarks out of $totalMarks, percentage $normalizePercentage and passed with C Grade");
  } else if (percentage >= 40 && percentage <= 49) {
    String normalizePercentage = percentage.toStringAsFixed(2) + "%";
    print(
        "$name has got $obtainedMarks out of $totalMarks, percentage $normalizePercentage and passed with D Grade");
  } else {
    String normalizePercentage = percentage.toStringAsFixed(2) + "%";
    print(
        "$name has got $obtainedMarks out of $totalMarks, percentage $normalizePercentage and Failed");
  }
}
