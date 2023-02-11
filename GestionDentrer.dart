import 'dart:io';

void main() async {
  print("entrer votre age");
  String? strAge = await stdin.readLineSync(); // recuperer l'age

  print("Vous avez un passPort ?(o/n) ");
  String? elegible = await stdin.readLineSync();
  bool hPass = havePass(elegible!);

  if (isEligible(strAge, hPass)) {
    print('Veillez passer ');
  }
  if (!isEligible(strAge, hPass)) {
    print("retourner ");
  }
}

bool havePass(String resp) {
  if (resp == 'o') {
    return true;
  }
  return false;
}

bool isEligible(String? strAge, bool havePass) {
  try {
    // eleminer
    int age = int.parse(strAge!);
    if (age <= 18 || !havePass) {
      return false;
    }

    print('Bienvenue ');
    return true;
  } catch (e) {
    print("Erreur de conversion $e");
  }
  return false;
}
