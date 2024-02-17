class StudentResult {
  String? name;
  String? section;
  int? marks;
  StudentResult({
    required this.name,
    String this.section = 'A',
    required int this.marks,
  }) {
    print('Name: $name\nSection: $section\nMarks: $marks');
  }
  double calcPerc() {
    double result = (marks! / 100) * 100;
    return result;
  }
}

class Alumni extends StudentResult {
  Alumni({required super.name, required super.marks}) {
    
  }
}
