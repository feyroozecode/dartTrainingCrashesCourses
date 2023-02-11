import 'dart:ffi';
import 'dart:io';

void main() {
  // var
  int age = 42;
  double poids = 76.9;
  bool isMan = false;
  String name = 'Idrissa Issaka';

  dynamic userType = 1; //

  userType = "2";

  print(
      "Salam $name vous etes age de  ${age.toString()} ans et vous paiser $poids kg");

  List<String> weekDay = [
    "Lundi",
    "Mardi",
    "Mercredi",
  ];

  for (var i = 0; i < weekDay.length; i++) {
    print("Jour " + weekDay[i]);
  }

  int userAge = 23000;
  bool isAdo = false;

  // method ou fontions
  bool userIsAdo(int age) {
    if (age >= 0 && age <= 18) {
      isAdo = true;
    }
    if (age > 200) {
      print("ce trop");
      exit(0);
    }

    return isAdo;
  }

  // Conditions
  if (userIsAdo(userAge)) {
    print('Vous etes un ado, et vous n\étes pas eligible ');
  }
  if (!userIsAdo(userAge) && userAge <= 200) {
    print('Bienvenu vous etes eligible');
  }
  if (userIsAdo(userAge)) {
    print('ce trop ou petit ');
  }

  // Swich en dart
  switch (userAge) {
    case 0:
      print("un bebe");
      break;
    case 10:
      print('salut enfant');
      break;
    case 20:
      print('salut grand');
  }

  
}
