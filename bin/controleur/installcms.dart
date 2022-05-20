import 'dart:io';

class Installcms {
  static Future<void> installWordpress() async {
    String install =
        "cd /var/www/html/ && wget https://fr.wordpress.org/latest-fr_FR.zip";
    String unzip = "unzip latest-fr_FR.zip";
    ProcessResult p1 = await Process.run('bash', ['-c', install]);
    print(p1.stdout);
    print(p1.stderr);
  }
}
