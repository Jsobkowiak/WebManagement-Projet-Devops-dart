import 'dart:io';

import 'package:mysql1/mysql1.dart';

class Installcms {
  static Future<void> installWordpress() async {
    String install =
        "cd /var/www/html/ && sudo wget https://fr.wordpress.org/latest-fr_FR.zip && unzip latest-fr_FR.zip";

    ProcessResult p1 = await Process.run('bash', ['-c', install]);
    print(p1.stdout);
    print(p1.stderr);
  }
}
