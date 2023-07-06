import 'package:inmaco/class/pessoa.dart';
import 'package:inmaco/exception/valor_invalido_exception.dart';

class Imc extends Pessoa {
  String _nome = "Sem nome";
  double _peso = 0;
  double _altura = 0;
  double _valorImc = 0;
  String _classificacao = "";

  Imc(String nome, double peso, double altura) : super(nome) {
    this.nome = nome;
    this.peso = peso;
    this.altura = altura;
    this.valorImc = valorImc;
    this.classificacao = classificacao;
  }

  @override
  String get nome => _nome;
  double get peso => _peso;
  double get altura => _altura;
  double get valorImc => _calcularIMC(_peso, _altura);
  String get classificacao => _classificarIMC(_valorImc);

  @override
  set nome(String nome) => (nome.isNotEmpty) ? _nome = nome : _nome;
  set peso(double peso) => (peso <= 0)
      ? throw ValorInvalidoException("O peso deve ser maior que zero.")
      : _peso = peso;
  set altura(double altura) => (altura <= 0)
      ? throw ValorInvalidoException("A altura deve ser maior que zero.")
      : _altura = altura;
  set valorImc(double valorImc) => _valorImc = this.valorImc;
  set classificacao(String classificacao) =>
      _classificacao = this.classificacao;

  String _classificarIMC(double valorImc) {
    switch (valorImc) {
      case < 16:
        return "Magreza grave";
      case < 17:
        return "Magreza moderada";
      case < 18.5:
        return "Magreza leve";
      case < 25:
        return "Saudável";
      case < 30:
        return "Sobrepeso";
      case < 35:
        return "Obesidade Grau I";
      case < 40:
        return "Obesidade Grau II (severa)";
      default:
        return "Obesidade Grau III (mórbida)";
    }
  }

  double _calcularIMC(double peso, double altura) {
    return peso / (altura * altura);
  }

  @override
  String toString() {
    return {
      "Nome": nome,
      "Peso": _peso,
      "Altura": _altura,
      "IMC": _valorImc.roundToDouble(),
      "Classificação IMC": _classificacao,
    }.toString();
  }
}
