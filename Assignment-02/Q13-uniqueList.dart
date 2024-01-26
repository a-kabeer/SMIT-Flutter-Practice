void main() {
//Q.13: Implement a code that takes in a list of integers and returns a new list containing only the unique elements from the original list. The order of elements in the new list should be the same as in the original list.
  List numbers = uniqueList([2, 1, 4, 6, 7, 8, 2, 1, 4]);
  print(numbers);
}

List uniqueList(List numbers) {
  List id = [];
  numbers.forEach((element) {
    if (!id.contains(element)) {
      id.add(element);
    }
  });
  return id;
}
