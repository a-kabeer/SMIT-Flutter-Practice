void main() {
  dynamic abc = [
    {3, 5, 6},
    {
      "hello": {
        2: ["abc", 2, 3],
        1: {
          "1": 0,
          1: 5,
        }
      }
    }
  ];
print(abc[1]["hello"][1][1]);
}
