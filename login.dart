import 'dart:io';
import 'signup.dart';

bool user() {
  if (signup()) {
    login();
  } else {
    print("nothing is here");
  }

  return true;
}

bool login() {
  String emailPattern = "[a-zA-Z0-9._-]+@[a-z]+\\.+[a-z]+";
  int tryCount = 0;

  print("");
  print('"LOGIN ACCOUNT!"');
  print("");
  while (true) {
    stdout.write("Email: ");
    String? userEmail = stdin.readLineSync();

    stdout.write("Password: ");
    String? userPassword = stdin.readLineSync();

    if ((RegExp(emailPattern).hasMatch(userEmail!) &&
        userPassword == password &&
        userEmail == email &&
        userPassword != null &&
        userPassword.isNotEmpty)) {
      print("");
      print("congratulations you are Successfully logged in");
      break;
    } else {
      print("Invalid");
      tryCount++;
    }
  }
  return true;
}