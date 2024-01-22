import 'dart:io';

void main() {
  List<Map<String, String>> email = [
    {"email": "a.kabeer1991@gmail.com", "password": "123"},
    {"email": "a.kabeer1991@gmail.com", "password": "321"},
    {"email": "a.kabeer1991@gmail.com", "password": "456"},
    {"email": "a.kabeer1991@gmail.com", "password": "654"},
    {"email": "a.kabeer1991@gmail.com", "password": "098"},
    {"email": "a.kabeer1991@gmail.com", "password": "890"}
  ];

  print("You Can try 3 times");
  bool isLogin = false;
  int attempts = 3;

  while (!isLogin && attempts > 0) {
    print("Enter Your Email");
    String emailInput = stdin.readLineSync()!;
    print("Enter Your Password");
    String passwordInput = stdin.readLineSync()!;

    isLogin = checkLogin(emailInput, passwordInput, email);

    if (isLogin) {
      print("Logged in successful");
    } else {
      print("Login Failed");
      --attempts;
      if (attempts != 0) {
        print("$attempts attempt(s) Left");
      } else {
        print("You are blocked for 24 hours");
      }
    }
  }
}

bool checkLogin(String emailInput, String passwordInput, List<Map<String, String>> emailList) {
  for (var account in emailList) {
    if (emailInput == account["email"] && passwordInput == account["password"]) {
      return true;
    }
  }
  return false;
}