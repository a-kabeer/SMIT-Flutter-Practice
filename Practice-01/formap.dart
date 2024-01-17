

void main() {
  List<Map> names = [
    {"name": "ahmed", "age": 20},
    {"name": "ali", "age": 16},
    {"name": "Akram", "age": 18}
  ];
  for(int i=0; i<names.length; i=i+1){
    if(i!=names.length-1){
    print(names[i]["name"]);
    }
    else{
    print(names[i]["age"]);

    }

 }
}
