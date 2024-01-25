void main() {
  //Q.15: Implement a Dart code that uses the where() method to filter out negative numbers from a list of integers. The program should take in the original list as a parameter and print a new list containing only the positive numbers.
  List numbers = positiveNumber([3, 1, 3, 5, 6, 8, -3, -5, 1, 2, -3]);
  print(numbers);
}

List positiveNumber(List numbers) {
  Iterable abc = numbers.where((e) => e > 0);
  return abc.toList();
// List addNumbers =[];
// for (var i = 0; i < numbers.length ; i++) {
// if(numbers[i]>0){
//   addNumbers.add(numbers[i]);
// }

// }
}
