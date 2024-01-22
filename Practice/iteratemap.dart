void main() {
var letters = ['I', 'II', 'V', 'X', 'L'];
var numbers = [1, 2, 5, 10, 50];
var data = Map.fromIterables(letters, numbers);
print(data);
}
