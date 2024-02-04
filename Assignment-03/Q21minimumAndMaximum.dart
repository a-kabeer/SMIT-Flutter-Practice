//Implement a code that finds the maximum and minimum elements in a list using a for loop and if-else condition.
void main() {
  maximumorminimum(number: [5, 9, 2, 6, 0, 5]);

  // minimum([12, 3, 9]);
}

maximumorminimum({required List number}) {
  int maximum = number.first;
  int minimum = number.first;
  for (var e in number) {
    if (e > maximum) {
      maximum = e;
    } else if (e < minimum) {
      minimum = e;
    }
  }
  print("Maximum: $maximum");
  print("Minimum: $minimum");
}

// minimum(List number) {
//   int maximum = number.first;
//   for (var e in number) {
//     if (e > maximum) {
//     } else {
//       maximum = e;
//     }
//   }
//   print(maximum);
// }
