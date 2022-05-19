import 'dart:io';
import 'ihm3.dart';
import 'ihmP.dart';
import '../controleur/installservice.dart';

class Ihm1 {
  static Future<void> suiteIhm1() async {
    bool valide = false;
    while (!valide) {
      print(Ihm.effaceScreen() +
          "\x1B[38;5;214m" +
          "+------------------------------------------------------------------------+\n" +
          "| Sélectionner un service                                                 |\n" +
          "| 1 - Apache                                                              |\n" +
          "| 2 - MariaDB                                                             |\n" +
          "| 3 - Php                                                                 |\n" +
          "| 4 - Fail2Ban                                                            |\n" +
          "| R - Retour                                                             |\n" +
          "+-------------------------------------------------------------------------+");
      print("\x1B[38;5;255m");
      String choix = stdin.readLineSync().toString();

      if (choix == "R") {
        valide = true;
        print(Ihm.effaceScreen());
        Ihm.menu();
      }
      if (choix == "1") {
        valide = true;
        await InstallationService.installApache();
      }
      if (choix == "2") {
        valide == true;
        await InstallationService.installMariadb();
      }
      if (choix == "3") {
        valide == true;
        await InstallationService.installPhp();
      }
      if (choix == "4") {
        valide == true;
        await InstallationService.installFail2Ban();
      }
    }
  }
}
