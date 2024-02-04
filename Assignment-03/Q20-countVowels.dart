//Write a program that counts the number of vowels in a given string using a for loop and if-else condition.
void main() {
  List letters = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j"];
  int count = 0;
  for (var e in letters) {
    if (e == "a" || e == "e" || e == "i" || e == "o" || e == "u") {
      ++count;
    }
  }
  print(count);
}
