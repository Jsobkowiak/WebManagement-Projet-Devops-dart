import 'dart:io';
import '../controleur/bdd.dart';
import '../controleur/bddconfig.dart';
import 'ihmP.dart';

class Ihm5 {
  static Future<void> affichagebd() async {
    bool valide = false;
    while (!valide) {
      print(Ihm.effaceScreen() +
          "\x1B[38;5;214m" +
          "+------------------------------------------------------------------------+\n" +
          "| Sélectionner un service                                                 |\n" +
          "| 1 - Configuration de la bdd                                               |\n" +
          "| R - Retour                                                             |\n" +
          "+-------------------------------------------------------------------------+");
      print("\x1B[38;5;255m");
      String choix = stdin.readLineSync().toString();
      if (choix == "1") {
        await Bdd.createBaseAndAccount();
        valide = true;
      } else if (choix == "R") {
        valide = true;
        print(Ihm.effaceScreen());
        await Ihm.menu();
      }
    }
  }
}
