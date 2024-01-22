void main() {
var f1 = {1: 'Apple', 2: 'Orange'};
var f2 = {3: 'Banana'};
var f3 = {4: 'Mango'};
var fruit = {}..addAll(f2)..addAll(f1)..addAll(f3);
print(fruit);
// var fruit3 = {...f1, ...f2, ...f3};
// print(fruit3);
}
