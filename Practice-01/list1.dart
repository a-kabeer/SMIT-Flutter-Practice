void main() {
  List<int> subjects = [1, 4, 2, 3, 6, 5, 8, 7];
  subjects.sort();
  print(subjects);
  print(subjects.reversed.toList());
  List rollno = [3, 4, 1, 5, 7, 4, 6, 8, 2];
  rollno.add(2);
  print(rollno);
  rollno.addAll([5, 2, 6, 8, 9]);
  print(rollno);
  rollno.insert(0, 24);
  print(rollno);
  rollno.remove(2);
  print(rollno);
  rollno.removeAt(0);
  print(rollno);
  rollno.removeWhere((e) => e < 5);
  print(rollno);
  rollno.where((e) => e < 6);
  print(rollno);
}