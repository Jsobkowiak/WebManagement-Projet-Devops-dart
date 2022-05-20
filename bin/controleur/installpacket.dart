import 'dart:io';

class InstallPacket {
  static Future<void> Installpackett() async {
    String cmd = "sudo apt install php-mysql php-xml php wget ";

    Process p = await Process.start('bash', ['-c', cmd]);
    stdout.addStream(p.stdout);
    stderr.addStream(p.stderr);
    p.stdin.addStream(stdin);
  }
}
