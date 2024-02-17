//Implement a code that finds the average of all the negative numbers ina list using a for loop and if-else condition.
void main() {
  averageOfNegative([
    22,
    -5,
    -5,
    2,
  ]);
  averageOfNegative([
    22,
    5,
    5,
    2,
  ]);
}

averageOfNegative(List numbers) {
  num count = 0;
  num sum = 0;
  for (var element in numbers) {
    if (element < 0) {
      sum += element;
      count++;
    }
  }
  if (count > 0) {
    num averageNegative = sum / numbers.length;
    print("Average of Negative numbers: ${averageNegative.toStringAsFixed(2)}");
  } else {
    print("No Negative Numbers");
  }
}
