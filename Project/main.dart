import 'dart:io';

import 'toDo.dart';
import 'login.dart';

void main() async {
  Authentication authentication = Authentication();
  authentication.authenticationStart();
  if (authentication.email != null && authentication.name != null) {
    String email = authentication.email!;
    String name = authentication.name!;
    ToDo objToDo = ToDo(name: name, email: email);
    objToDo.startApplication();
    print('Powered by Abdul Kabeer');
    await Future.delayed(Duration(seconds: 3));
    exit(0);
  }
}
