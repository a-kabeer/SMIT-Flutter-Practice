void main() {
  //Q.4: Create a list of numbers & write a program to get the smallest & greatest number from a list.
  List<int> numbers = [2, 3, 1, 5, 7, 43, 22, 56, 33, 68, 89, 2, 12, 5, 56];
  print(numbers);
  numbers.sort();
  print("Smallest Number= ${numbers.first}\nGreatest Number= ${numbers.last}");
}
