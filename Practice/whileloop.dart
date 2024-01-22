import 'dart:io';

void main() {
  List<Map> email = [
    {"email": "a.kabeer1991@gmail.com", "password": "123"},
    {"email": "a.kabeer1991@gmail.com", "password": "321"},
    {"email": "a.kabeer1991@gmail.com", "password": "456"},
    {"email": "a.kabeer1991@gmail.com", "password": "654"},
    {"email": "a.kabeer1991@gmail.com", "password": "098"},
    {"email": "a.kabeer1991@gmail.com", "password": "890"}
  ];
  print("You Can try 3 times");
  bool isLogin = false;
  int b = 3;
  while (isLogin == false && b > 0) {
    print("Enter Your Email");
    String emailInput = stdin.readLineSync()!;
    print("Enter Your Password");
    String passwordInput = stdin.readLineSync()!;
    for (var account in email) {
      if (emailInput == account["email"] && passwordInput == account["password"]){
        isLogin = true;
      }
      isLogin = false;
    }
    if (isLogin == true) {
      print("Logged in successful");
    } else {
      print("Logged in Failed");
    }
    --b;
    if (b != 0)
      print("$b attempt Left");
    else {
      print("You are blocked for 24hours");
    }
  }
}
