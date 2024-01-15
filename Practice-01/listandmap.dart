void main() {
  List<Map<String, dynamic>> studentName = [
    {"name": "Zaid", "result": "pass"},
    {"name": "Amar","result": "fail"},
    {"name": "Bakr","result": "pass"},
    {"name": "Ali","result": "fail"},
    {"name": "Usman","result": "pass"},
    {"name": "Hanzala","result": "fail"},
    {"name": "Talha","result": "pass"}
  ];
  print(studentName[1]["name"]);
}
