import 'dart:convert';
import 'dart:io';

class InstallationService {
  static Future<void> installApache() async {
    String cmd = "sudo apt install apache2";

    Process p = await Process.start('bash', ['-c', cmd]);
    stdout.addStream(p.stdout);
    p.stdin.addStream(stdin);

    print(p.stdout);
  }

  static Future<void> installMariadb() async {
    String cmd = "sudo apt install mariadb-server -y";

    ProcessResult result = await Process.run('bash', ['-c', cmd]);

    print(result.stdout);
  }

  static Future<void> installPhp() async {
    String cmd = "sudo apt install php -y";

    ProcessResult result = await Process.run('bash', ['-c', cmd]);

    print(result.stdout);
  }

  static Future<void> installFail2Ban() async {
    String cmd = "sudo apt install fail2ban -y";

    ProcessResult result = await Process.run('bash', ['-c', cmd]);

    print(result.stdout);
  }
}
