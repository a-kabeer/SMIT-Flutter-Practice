//Write a program that asks the user for their email and password. You are given a list of predefined user credentials (email and password combinations). If the entered email and password match any of the credentials in the list, print "User login successful." Otherwise, keep asking for the email and password until the correct credentials are
import 'dart:io';

void main() {
  String email = "a.kabeer1991@gmail.com";
  String password = "123";
  print("You Can try 3 times");
  bool isLogin = false;
  int b = 3;
  while (isLogin == false && b > 0) {
    stdout.write("Enter Your Email: ");
    String emailInput = stdin.readLineSync()!;
    stdout.write("Enter Your Password: ");
    String passwordInput = stdin.readLineSync()!;
    if (emailInput == email && passwordInput == password) {
      isLogin = true;
    }
    if (isLogin == true) {
      print("Logged in successful");
      break;
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
