void main() {
  List haha = [
    {
      0: 0,
      1: [1]
    },
    {"2": "2"},
    {
      1: {
        "hehe": [
          {
            "hehe": {"haha": "bye"}
          }
        ]
      }
    },
  ];
  Map a = haha[2];
  print(haha[2][1]["hehe"][0]["hehe"]["haha"]); 
}
