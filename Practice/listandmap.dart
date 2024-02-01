void main() {
  List<Map<String, dynamic>> studentName = [
    {"name": "Zaid", "result": "pass"},
    {"name": "Amar", "result": "fail"},
    {"name": "Bakr", "result": "pass"},
    {"name": "Ali", "result": "fail"},
    {"name": "Usman", "result": "pass"},
    {"name": "Hanzala", "result": "fail"},
    {"name": "Talha", "result": "pass"}
  ];
  String deletedTask = studentName[0]["name"];
  print(deletedTask);
  studentName.removeWhere((e) => e == studentName[0]);
  print(studentName[0]);
  print(studentName[1]["name"]);
}
