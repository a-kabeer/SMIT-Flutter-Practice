void main() {
  //Q.3: Create a list of Days and remove one by one from the end of list.
  List<String> days = [
    "Sunday",
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday",
    "Saturday"
  ];
  print(days);
  while (days.isNotEmpty) {
    days.removeLast();
    print(days);
  }
}
