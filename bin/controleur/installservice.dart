import 'dart:io';

class InstallationService {
  static Future<void> installApache() async {
    String cmd = "sudo apt install apache2 -y";

    ProcessResult p = await Process.run('bash', ['-c', cmd]);
    print(p.stdout);
  }

  static Future<void> installMariadb() async {
    String cmd = "sudo apt install mariadb-server -y";

    ProcessResult p = await Process.run('bash', ['-c', cmd]);
    print(p.stdout);
  }

  static Future<void> installPhp() async {
    String cmd = "sudo apt install php -y";

    ProcessResult p = await Process.run('bash', ['-c', cmd]);
    print(p.stdout);
  }

  static Future<void> installFail2Ban() async {
    String cmd = "sudo apt install fail2ban -y";

    ProcessResult p = await Process.run('bash', ['-c', cmd]);
    print(p.stdout);
  }
}
