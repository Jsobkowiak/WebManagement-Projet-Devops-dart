import 'dart:io';

import '../controleur/installpacket.dart';
import 'ihmP.dart';
import 'sous-ihm/ihm3suite.dart';

class Ihm3 {
  static Future<void> SuiteIhm3() async {
    bool valide = false;
    while (!valide) {
      print(Ihm.effaceScreen() +
          "\x1B[38;5;214m" +
          "+------------------------------------------------------------------------+\n" +
          "| Sélectionner une Options                                                |\n" +
          "| 1 - Installations des packets nécessaires                               |\n" +
          "| 2 - Installations CMS                                                   |\n" +
          "| R - Retour                                                              |\n" +
          "+-------------------------------------------------------------------------+");
      print("\x1B[38;5;255m");
      String choix = stdin.readLineSync().toString();
      if (choix == "R") {
        valide = true;
        print(Ihm.effaceScreen());
        Ihm.menu();
      } else if (choix == "1") {
        valide = true;
        InstallPacket.Installpackett();
      } else if (choix == "2") {
        valide = true;
        Ihm3Suite.SuiteInstallCms();
      }
    }
  }
}
