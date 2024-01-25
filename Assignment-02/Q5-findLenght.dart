void main() {
  //Q.5: Create a map with name, phone keys and store some values to it. Use where to find all keys that have length 4.
  List contactInformation = [
    {"name": "Arif", "phone": 03042103438},
    {"name": "Ahmed", "phone": 03042103431},
    {"name": "Anas", "phone": 03042103432},
    {"name": "Jaleel", "phone": 03042103433},
    {"name": "Asim", "phone": 03042103434},
    {"name": "Junaid", "phone": 03042103435},
    {"name": "Jasim", "phone": 03042103436},
  ];
  for (var i = 0; i < contactInformation.length; i++) {
    if (contactInformation[i]["name"].length == 4) {
      print(contactInformation[i]);
    }
  }
}
