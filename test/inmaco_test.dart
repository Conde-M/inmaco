import 'package:inmaco/exception/valor_invalido_exception.dart';
import 'package:test/test.dart';
import 'package:inmaco/class/imc.dart';

void main() {
  double peso = 63.5;
  double altura = 1.91;
  String nome = "Marcondes";
  test('Resultado do IMC - Campos preenchidos', () {
    final imc = Imc(nome, peso, altura);
    expect(imc.valorImc, equals(peso / (altura * altura)));
    expect(imc.altura, equals(altura));
    expect(imc.classificacao, equalsIgnoringCase("magreza leve"));
    expect(imc.peso, equals(peso));
    expect(imc.nome, equalsIgnoringCase(nome));
  });
  test('Resultado do IMC - Nome vazio', () {
    final imc = Imc("", peso, altura);
    expect(imc.nome, equalsIgnoringCase("sem nome"));
  });
  test('Resultado do IMC - peso zero', () {
    expect(() => Imc(nome, 0, altura),
        throwsA(TypeMatcher<ValorInvalidoException>()));
  });
  test('Resultado do IMC - altura zero', () {
    expect(() => Imc(nome, peso, 0),
        throwsA(TypeMatcher<ValorInvalidoException>()));
  });
}
