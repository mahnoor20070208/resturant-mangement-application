import 'dart:html';
import 'dart:io';
import 'login.dart';
import 'setting.dart';

//categories
List<String> dishes = ["biryani", "pasta"];
List<String> room = ["basic rooms", "luxurey rooms"];
[
];

String? listName, borrowBook, customerName, payment, phoneNumber, choice;
void main() {
  if (user()) {
    print("");
    print("Home Page     ||     Setting     ");
    print("");

    stdout.write("Choose One Option: ");
    choice = stdin.readLineSync();

    if (choice?.toLowerCase() == "home") {
      homePage();
    } else if (choice?.toLowerCase() == "setting") {
      settings();
    } else {
      print("error");
    }
  } else {
    print("try again");
  }
}

bool homePage() {
  stdout.write("Do you want to book a room?");
  String? answer = stdin.readLineSync();

  if (answer?.toLowerCase() == "add") {
    add();
  } else if (answer?.toLowerCase() == "remove") {
    remove();
  } else if (answer?.toLowerCase() == "borrow") {
    borrow();
  }
  return true;
}

// Add methode
bool add() {
  stdout.write("Enter category name: ");
  listName = stdin.readLineSync();
  switch (listName?.toLowerCase().trim()) {
    case 'rooms':
      stdout.write("Enter your fav room: ");
      String? bookName = stdin.readLineSync()!.trim();
      room.add(room);
      print(room ,dishes);
      break;
    case 'dishes':
      stdout.write("Enter room name: ");
      String? dishes = stdin.readLineSync()!.trim();
      entrepreneurship.add(dishes);
      print(entrepreneurship);
      break;
    
  
  }
  return true;
}

// remove method
bool remove() {
  stdout.write("Enter category name: ");
  listName = stdin.readLineSync();
  switch (listName?.toLowerCase().trim()) {
    case 'rooms':
      stdout.write("Enter room name: ");
      String? rooms = stdin.readLineSync()!.trim();
      room.remove(room);
      print(room);
      break;
    case 'dishes':
      stdout.write("Enter dishes name: ");
      String? bookName = stdin.readLineSync()!.trim();
      dishes.remove(bookName);
      print(dishes);
      break;
    
  }
  return true;
}

bool borrowerDetails() {
  stdout.write("Enter borrower Name: ");
  customerName = stdin.readLineSync();

  stdout.write("Enter borrower Contact: ");
  phoneNumber = stdin.readLineSync();

  stdout.write("Enter Payment: ");
  payment = stdin.readLineSync();

  return true;
}

bool borrow() {
  stdout.write("Enter category name: ");
  listName = stdin.readLineSync();

  switch (listName?.toLowerCase().trim()) {
    case 'room":
      stdout.write("Enter room name: ");
      String? rooms= stdin.readLineSync()!.trim();
      room details();
      rooms.remove(room);
      break;
    case 'dishes':
      stdout.write("Enter dishes name: ");
      String? dishesName = stdin.readLineSync()!.trim();
      borrowerDetails();
      dishes.remove(dishesName);
      break;
    
  }
  return true;
}