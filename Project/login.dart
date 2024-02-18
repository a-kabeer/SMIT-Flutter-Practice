import 'dart:convert';
import 'dart:io';

void main() {}

//Constructor
class Authentication {
  String? email;
  String? name;
  String mainMenu = 'Enter 0 to go back\n';
  bool isMainMenu = true;
  String file = 'data.json';
  String? password;
  String optionInfo =
      '\nEnter 0 to close application \nSelect an option\n1. Login\n2. SignUp\n3. Forget Password\n4. Delete Account\n5. Recover Blocked/Deactivated Account\n0. Close Application';
  Authentication() {}
  authenticationStart() async {
    bool isReady = true;
    print(optionInfo);

    while (isReady) {
      int? options = int.tryParse(stdin.readLineSync()!);
      switch (options) {
        case 1:
          String? result = login();
          if (result == "signup") {
            print(signUp());
          } else if (result == "login") {
            isReady = false;
          } else if (result == "block") {
            isReady = false;
          } else if (result == "menu") {
            print(optionInfo);
          } else if (result == 'deactivated') {
            isReady = false;
          } else {}
          break;
        case 2:
          String? result = signUp();
          if (result == "menu") {
            print(optionInfo);
          } else if (result == "exist") {
            print(optionInfo);
          } else {
            print(result);
          }
          break;
        case 3:
          String? result = forgetPassword();
          if (result == "menu") {
            print(optionInfo);
          } else {
            print(result);
          }
          break;
        case 4:
          String? result = deactivateAccount();
          if (result == "menu") {
            print(optionInfo);
          } else {
            print(result);
            isReady = false;
          }
          break;
        case 5:
          String? result = recoverBlockDeactivatAccount();
          if (result == "menu") {
            print(optionInfo);
          } else {
            print(result);
          }
        case 0:
          printSquareMessage();
          print("Please wait, closing...");
          await Future.delayed(Duration(seconds: 3));
          // isReady = false;
          exit(0);
        default:
          print(
              "Please enter a valid option (1-5)$optionInfo or Enter 0 to close application");
          break;
      }
    }
  }

  List readData() {
    List userData = [];
    File userCreated = File('data.json');
    if (!userCreated.existsSync()) {
      userCreated.writeAsStringSync('[]');
      return userData = [];
    } else {
      String content = userCreated.readAsStringSync();
      if (content.isEmpty) {
        userCreated.writeAsStringSync('[]');
        return userData = [];
      } else {
        userData = jsonDecode(content);
        return userData;
      }
    }
  }

  String login() {
    List userData = readData();
    if (userData.isEmpty) {
      print('There is no account, please SignUp');
      return "signup";
    }
    print("Welcome to Login");
    bool isLogin = false;
    int attempts = 10;

    while (!isLogin && attempts > 0) {
      stdout.write(mainMenu + 'Enter your Email Address: ');
      String? email = stdin.readLineSync()!.toLowerCase();
      if (email == "0") {
        return 'menu';
      } else if (!isValidEmail(email)) {
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

      for (var account in userData) {
        if (account["email"] == email && account["password"] == password) {
          if (account['isActiveUser'] && !account['isBlocked']) {
            print("Logged in successfully");
            this.email = email;
            this.name = account["name"];
            return 'login';
          } else if (account['isBlocked']) {
            print('Your account is blocked.');
            return 'block';
          } else {
            print('Your account is deactivated');
            return 'deactivated';
          }
        } else if (account["email"] == email ||
            account["password"] == password && attempts == 1) {
          account['isBlocked'] = true;
          updateData(file, userData);
        }
      }

      attempts--;
      print('Incorrect Email/Password. Attempts left: $attempts');
      if (attempts == 0) {
        print("You are blocked.");
        return "block";
      }
    }
    return "failed";
  }

  signUp() {
    List userData = readData();
    bool isCorrect = true;
    print('Welcome to Signup');
    while (isCorrect) {
      stdout.write(mainMenu + 'Enter your Full Name: ');
      String? fullname = stdin.readLineSync();
      if (fullname == "0") {
        return 'menu';
      } else if (fullname == "") {
        print('Enter a Valid Name');
        continue;
      }

      stdout.write('Enter your Email Address: ');

      bool validEmail = false;
      while (validEmail == false) {
        String? email = stdin.readLineSync()!.toLowerCase();
        if (!isValidEmail(email)) {
          stdout.write(
              'Invalid email address. Please try again.\nEnter valid Email Address: ');
          validEmail = false;
        } else {
          validEmail = true;
          this.email = email;
          if (userData.isNotEmpty) {
            for (var account in userData) {
              if (account['email'] == email) {
                print('User already exist');
                validEmail = false;
                return 'exist';
              }
            }
          }
        }
      }
      bool validPassword = false;
      stdout.write('Enter your Password: ');
      while (validPassword == false) {
        String? password = stdin.readLineSync();
        if (!isValidPassword(password)) {
          stdout.write(
              'Use 1 capital letter 1 special character at least total of 8 characters. Please try again.\nEnter valid Password: ');
          validPassword = false;
        } else {
          validPassword = true;
          this.password = password;
          bool validConfirmPassword = false;
          stdout.write('Confirm your Password: ');
          while (validConfirmPassword == false) {
            String? confirmPassword = stdin.readLineSync();
            if (confirmPassword == password) {
              validConfirmPassword = true;
              print(validConfirmPassword);
              File userCreated = File('data.json');
              if (!userCreated.existsSync()) {
                userCreated.createSync();
                userCreated.writeAsStringSync('[]');
              }
              String content = userCreated.readAsStringSync();
              List userData = jsonDecode(content);
              userData.add({
                'name': fullname,
                'email': email,
                'password': password,
                'task': [],
                'isBlocked': false,
                'isActiveUser': true,
              });
              String jsonString = jsonEncode(userData);
              userCreated.writeAsStringSync(jsonString);
              return "$fullname! Your Account Created Successfully!$optionInfo";
            } else {
              stdout.write('Password doesnot match\nEnter correct password: ');
              validConfirmPassword = false;
            }
          }
        }
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

  forgetPassword() {
    List userData = readData();
    bool isInputCorrect = false;
    if (userData.isEmpty) {
      print('There is no data');
      return 'menu';
    }
    print("Welcome to Forget Password");
    while (!isInputCorrect) {
      stdout.write(mainMenu + 'Enter your Email Address: ');
      String? email = stdin.readLineSync()!.toLowerCase();
      if (email == "0") {
        return 'menu';
      } else if (!isValidEmail(email)) {
        print('Invalid email address. Please try again.');
      } else {
        for (var account in userData) {
          if (account['email'] == email) {
            isInputCorrect = true;

            return '${account['name']}! Please Check your Email Inbox for Password$optionInfo';
          }
        }
      }
    }
  }

  updateData(String file, List userData) {
    File file = File('data.json');
    file.writeAsStringSync(jsonEncode(userData));
  }

  recoverBlockDeactivatAccount() {
    List userData = readData();
    bool userInputCorrect = false;
    if (userData.isEmpty) {
      print('There is no data');
      return 'menu';
    }
    print("Welcome to Account Recovery");
    while (!userInputCorrect) {
      stdout.write(mainMenu + 'Enter your Email Address: ');
      String? email = stdin.readLineSync()!.toLowerCase();
      ;
      if (email == "0") {
        return 'menu';
      } else if (!isValidEmail(email)) {
        print('Invalid email address. Please try again.');
        continue;
      }
      stdout.write('Enter your Password: ');
      String? password = stdin.readLineSync();
      if (!isValidPassword(password)) {
        print('Use correct password.');
        continue;
      }
      for (var account in userData) {
        if (account["email"] == email && account['password'] == password) {
          if (account['isActiveUser'] == false &&
              account['isBlocked'] == true) {
            account['isActiveUser'] = true;
            account['isBlocked'] = false;
            userInputCorrect = true;
            updateData(file, userData);
            return '${account['name']}! Your Account is Unblocked and Activated$optionInfo';
          } else if (account['isActiveUser'] == false) {
            account['isActiveUser'] = true;
            userInputCorrect = true;
            updateData(file, userData);
            return '${account['name']} Your Account is Activated$optionInfo';
          } else if (account['isBlocked'] == true) {
            account['isBlocked'] = true;
            userInputCorrect = true;
            updateData(file, userData);
            return '${account['name']} Your Account is Unblocked$optionInfo';
          }
        }
      }
      if (!userInputCorrect) {
        print('Incorrect Email/Password');
      }
    }
  }

  deactivateAccount() {
    List userData = readData();
    bool userInputCorrect = false;
    if (userData.isEmpty) {
      print('There is no data');
      return 'menu';
    }
    print("Welcome to Account Deactivation");
    while (!userInputCorrect) {
      stdout.write(mainMenu + 'Enter your Email Address: ');
      String? email = stdin.readLineSync()!.toLowerCase();
      ;
      if (email == "0") {
        return 'menu';
      } else if (!isValidEmail(email)) {
        print('Invalid email address. Please try again.');
        continue;
      }
      stdout.write('Enter your Password: ');
      String? password = stdin.readLineSync();
      if (!isValidPassword(password)) {
        print('Use correct password.');
        continue;
      }

      for (var account in userData) {
        if (account["email"] == email && account['password'] == password) {
          if (account['isActiveUser'] == false) {
            userInputCorrect = true;
            return '${account['name']}! Your Account is already deactivated';
          } else {
            account['isActiveUser'] = false;
            userInputCorrect = true;
            updateData(file, userData);
            return '${account['name']}! Your account is deactivated';
          }
        }
      }
      if (!userInputCorrect) {
        print('Incorrect Email/Password');
      }
    }
  }

  void printSquareMessage() async {
    List<String> lines = [
      "SMIT - Flutter Batch 2",
      "Special Thanks to Sir Bilal Rehman Khan",
      "&",
      "Sir Huzaifa",
      "Powered by Abdul Kabeer"
    ];

    int maxLength = lines.fold<int>(
            0, (max, line) => line.length > max ? line.length : max) +
        4;
    String border = '*' * maxLength;

    print(border);
    for (String line in lines) {
      int totalPadding = maxLength - line.length - 2; // Total padding needed
      int paddingSide = totalPadding ~/ 2; // Padding on each side
      String paddedLine = '*' +
          ' ' * paddingSide +
          line +
          ' ' * (totalPadding - paddingSide) +
          '*';
      print(paddedLine);
    }
    print(border);
  }
}
