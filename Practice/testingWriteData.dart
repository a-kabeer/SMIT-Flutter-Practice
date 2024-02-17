import 'dart:io';
import 'dart:convert';

void main() {
  signUp();
}

signUp() {
  bool isCorrect = true;
  print('Welcome to Signup');
  while (isCorrect) {
    stdout.write('Enter your Full Name: ');
    String? fullname = stdin.readLineSync();
    stdout.write('Enter your Email Address: ');
    String? email = stdin.readLineSync();
    if (!isValidEmail(email)) {
      print('Invalid email address. Please try again.');
      continue;
    }
    stdout.write('Enter your Password: ');
    String? password = stdin.readLineSync();
    if (!isValidPassword(password)) {
      print(
          'Use 1 capital letter 1 special character at least total of 8 characters. Please try again.');
      continue;
    }
    stdout.write('Confirm your Password: ');
    String? confirmPassword = stdin.readLineSync();
    if (password == confirmPassword) {
      File userCreated = File('data.json');
      if (!userCreated.existsSync()) {
        userCreated.createSync();
        userCreated.writeAsStringSync('[]');
      }
      String content = userCreated.readAsStringSync();
      print(content);
      List userData = jsonDecode(content);
      userData.add({
        'name': fullname,
        'email': email,
        'password': password,
        'task': [],
        'isActiveUser': true,
      });
      String jsonString = jsonEncode(userData);
      userCreated.writeAsStringSync(jsonString);

      return fullname!;
    } else {
      print('Password doesnot match');
    }
  }
}

bool isValidEmail(String? email) {
  RegExp emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
  return email != null && emailRegex.hasMatch(email);
}

bool isValidPassword(String? password) {
  RegExp passwordRegex = RegExp(r'^(?=.*[A-Z])(?=.*[!@#$%^&*]).{8,}$');
  return password != null && passwordRegex.hasMatch(password);
}
