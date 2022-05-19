import 'dart:io';

import '../../controleur/installcms.dart';
import '../ihm3.dart';
import '../ihmP.dart';

class Ihm3Suite {
  static Future<void> SuiteInstallCms() async {
    bool valide = false;
    while (!valide) {
      print(Ihm.effaceScreen() +
          "\x1B[38;5;214m" +
          "+------------------------------------------------------------------------+\n" +
          "| Sélectionner un CMS                                                     |\n" +
          "| 1 - Wordpress                                                           |\n" +
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
        Installcms.installWordpress();
      } else if (choix == "R") {
        valide = true;
        print(Ihm.effaceScreen());
        Ihm3.SuiteIhm3();
      }
    }
  }
}
