import 'dart:io';
import 'ihm1.dart';
import 'ihm4.dart';
import 'ihm5.dart';

class Ihm {
  static Future<void> pageprincipal() async {
    String effacescreen = "\x1B[2J\x1B[0;0H" + "\x1B[38;5;196m";
    print(effacescreen +
        "" +
        "  __          __  _       __  __                                                   _   \n" +
        "  \\ \\        / / | |     |  \\/  |                                                 | |  \n" +
        "   \\ \\  /\\  / /__| |__   | \\  / | __ _ _ __   __ _  __ _  ___ _ __ ___   ___ _ __ | |_ \n" +
        "    \\ \\/  \\/ / _ \\ '_ \\  | |\\/| |/ _` | '_ \\ / _` |/ _` |/ _ \\ '_ ` _ \\ / _ \\ '_ \\| __|\n" +
        "     \\  /\\  /  __/ |_) | | |  | | (_| | | | | (_| | (_| |  __/ | | | | |  __/ | | | |_ \n" +
        "      \\/  \\/ \\___|_.__/  |_|  |_|\\__,_|_| |_|\\__,_|\\__, |\\___|_| |_| |_|\\___|_| |_|\\__|\n" +
        "                                                    __/ |                              \n" +
        "                                                   |___/                               \n");
  }

  static Future<void> menu() async {
    bool valide = false;
    while (!valide) {
      print("\x1B[38;5;214m" +
          "+------------------------------------------------------------------------+\n" +
          "| Sélectionner une Options                                                |\n" +
          "| 1 - Installations des services                                          |\n" +
          "| 2 - Activation/Desactivation site                                       |\n" +
          "| 3 - Installation Appli-web                                              |\n" +
          "| 4 - Configurations sites web                                            |\n" +
          "| 5 - Installations et configurations base de donnée                      |\n" +
          "| Q - Quitter                                                             |\n" +
          "+-------------------------------------------------------------------------+");
      print("\x1B[38;5;255m");
      String choix = stdin.readLineSync().toString();
      if (choix == "Q") {
        valide = true;
      }

      if (choix == "1") {
        valide = true;
        await Ihm1.suiteIhm1();
      }
      if (choix == "2") {
        valide = true;
      }
      if (choix == "3") {
        valide = true;
      }
      if (choix == "4") {
        await Ihm4.suiteIhm4();
        valide = true;
      }
      if (choix == "5") {
        await Ihm5.affichagebd();
        valide = true;
      }
    }
  }
}
