import 'dart:convert';
import 'dart:io';

void main() {
  login();
}

login() {
  print("You Can try 10 times");
  bool isLogin = false;
  int b = 10;
  File userCreated = File('data.json');
  String content = userCreated.readAsStringSync();
  List userData = jsonDecode(content);
  print(userData[0]);
  while (isLogin == false && b > 0) {
    stdout.write("Enter Your Email: ");
    String emailInput = stdin.readLineSync()!;
    stdout.write("Enter Your Password: ");
    String passwordInput = stdin.readLineSync()!;
    // for (var account in email) {
    //   if (emailInput == account["email"] &&
    //       passwordInput == account["password"]) {
    //     isLogin = true;
    //   }
    //   isLogin = false;
    // }
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
