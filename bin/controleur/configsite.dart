import 'dart:io';

class ConfigSite {
  static Future<void> ConfigurationWeb() async {
    print("Veuillez Entrer le nom de votre site :");
    String saisie = stdin.readLineSync().toString();
    String directory = "<Directory>" + "</Directory>";
    String cmd = "sudo touch /etc/apache2/sites-available/" + saisie + ".conf";
    String cm2 = "sudo echo " + directory + ">> " + saisie + ".conf";
    ProcessResult result = await Process.run('bash', ['-c', cmd]);

    print(result.stdout);
    print(cmd);
  }
}
