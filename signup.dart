import 'dart:io';

String? email, phone, name, password;

bool signup() {
  print("");
  print('"SIGNUP DETAILS"');
  print("");
  stdout.write("Enter Your Full Name: ");
  name = stdin.readLineSync();

  stdout.write("Enter Your Phone Number: ");
  phone = stdin.readLineSync();

  stdout.write("Enter Your Email: ");
  email = stdin.readLineSync();

  stdout.write("Enter Password: ");
  password = stdin.readLineSync();

  String emailPattern = "[a-zA-Z0-9._-]+@[a-z]+\\.+[a-z]+";

  if ((RegExp(emailPattern).hasMatch(email!) &&
      name != null &&
      phone != null &&
      password != null)) {
    print("");
  } else {
    print("Try again");
  }
  return true;
}