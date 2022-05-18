import 'dart:io';

import 'package:mysql1/mysql1.dart';

class Bddconfig {
  String _host = "localhost";
  int _port = 3306;
  String _user = "admin";
  String _db = "wordpress";
  String _password = "admin";

  Bddconfig.create() {}

  ConnectionSettings getconfig() {
    ConnectionSettings settings = ConnectionSettings(
        host: this._host,
        port: this._port,
        db: this._db,
        user: this._user,
        password: this._password);
    return settings;
  }

  void setDb(String newdb) {
    _db = newdb;
  }

  void setUser(String newuser) {
    _user = newuser;
  }

  void setPassword(String newpassword) {
    _password = newpassword;
  }
}
