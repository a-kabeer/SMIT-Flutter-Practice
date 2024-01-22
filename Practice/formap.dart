void main() {
  List<Map> names = [
    {"name": "ahmed", "age": 20},
    {"name": "ali", "age": 16},
    {"name": "Akram", "age": 18}
  ];
  // print(names[0]);
  // print(names[1]);
  // print(names[2]);

  for (int i = 0; i < names.length; i++) {
    if(i!=names.length-1)
    //0
    //1
    //2
    {
    print(names[i]["name"]);
    }
    else{
    print(names[i]["age"]);

    }
  }
}
