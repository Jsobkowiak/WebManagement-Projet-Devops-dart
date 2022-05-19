import 'dart:io';
import 'ihmP.dart';
import '../controleur/configsite.dart';

class Ihm4 {
  static Future<void> suiteIhm4() async {
    bool valide = false;
    while (!valide) {
      print(Ihm.effaceScreen() +
          "\x1B[38;5;214m" +
          "+------------------------------------------------------------------------+\n" +
          "| Sélectionner un service                                                 |\n" +
          "| 1 - Configuration du site                                                              |\n" +
          "| R - Retour                                                             |\n" +
          "+-------------------------------------------------------------------------+");
      print("\x1B[38;5;255m");
      String choix = stdin.readLineSync().toString();
      if (choix == "1") {
        valide = true;
        await ConfigSite.ConfigurationWeb();
      } else if (choix == "R") {
        valide = true;
        print(Ihm.effaceScreen());
        Ihm.menu();
      }
    }
  }
}
