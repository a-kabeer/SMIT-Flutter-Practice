import 'dart:io';

void main() {
  String email = "a.kabeer1991@gmail.com";
  String password = "12345678";
  print("Please Enter your Email");
  String inputEmail = stdin.readLineSync()!;
  print("Please Enter your Password");
  String inputPassword = stdin.readLineSync()!;
  if (email == inputEmail && password == inputPassword) {
    print("Logged in Successfully");
  } else if (email == inputEmail && password != inputPassword) {
    print("Password is incorrect");
  } else if (email != inputEmail && password == inputPassword) {
    print("Email is incorrect");
  } else {
    print("both email and password incorrect");
  }
}
