import 'dart:io';

import 'package:mysql1/mysql1.dart';

import 'bddconfig.dart';

class Bdd {
  static Future<void> connect() async {
    Bddconfig bddconfig = new Bddconfig.create();
    try {
      MySqlConnection con =
          await MySqlConnection.connect(bddconfig.getconfig());
      print("Connexion reussi!");
      con.close();
      print("Connexion terminé");
    } catch (e) {
      print(e.toString());
    }
  }

  static Future<void> createBaseAndAccount() async {
    print("Le nom de la base :");
    String db = stdin.readLineSync().toString();
    print("Le nom d'utilisateur :");
    String user = stdin.readLineSync().toString();
    print("Le mot de passe :");
    String password = stdin.readLineSync().toString();

    String requette = "create database " + db + ";";
    String requette2 = "grant all privileges on *.*" +
        " to " +
        "'$user'" +
        "@localhost identified by " +
        "'$password'" +
        ";";

    Bddconfig bddconfig = new Bddconfig.create();
    try {
      MySqlConnection con =
          await MySqlConnection.connect(bddconfig.getconfig());
      Results test = await con.query(requette);
      Results test2 = await con.query(requette2);

      con.close();
    } catch (e) {
      print(e.toString());
    }
  }
}
