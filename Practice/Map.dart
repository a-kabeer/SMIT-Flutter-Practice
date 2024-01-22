void main() {
  Map a = {
    "name": ["Baloch", "Sindhi", "Pashto", "Punjabi"],
    "Province": ["Balochistan", "Sindh", "KPK", "Punjab"]
  };
  print("${a["name"][0]} and ${a["Province"][0]}");
  List studentName = [
    {
      "ID": 1,
      "Name": "Sir Bilal Rehman",
      "Email": "Bilal.Rehman@gmail.com",
      "Phone": 03001234567
    },
    {
      "ID": 2,
      "Name": "Kabeer",
      "Email": "a.kabeer1991@gmail.com",
      "Phone": 03042103438
    }
  ];
  studentName.forEach((e) {
    print(e["Phone"]);
  });
}