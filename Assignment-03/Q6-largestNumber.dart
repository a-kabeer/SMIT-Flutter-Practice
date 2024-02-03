//Implement a code that finds the largest element in a list using a for loop.
//Example:
//Input: [3, 9, 1, 6, 4, 2, 8, 5, 7]
//Output: Largest element: 9
void main() {
  int largest = 0;
  List number = [3, 9, 1, 6, 4, 2, 8, 5, 7];
  // for (var i = 0; i < number.length; i++) {
  //   if (number[i] > largest) {
  //     largest = number[i];
  //   }
  // }
  for (var e in number) {
    if (e > largest) {
      largest = e;
    }
  }
  print("Largest element: $largest");
}
