import 'package:inmaco/class/imc.dart';
import 'package:inmaco/class/console_utils.dart';

void execute() {
  String nome = ConsoleUtils.lerString(texto: "Ola! Digite seu nome:");
  double peso = ConsoleUtils.lerDouble(texto: "Qual seu peso?");
  double altura = ConsoleUtils.lerDouble(texto: "Qual sua altura?");
  Object pessoa1 = Imc(nome, peso, altura);
  print(pessoa1);
}
