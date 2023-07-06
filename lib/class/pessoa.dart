// ignore_for_file: file_names
abstract class Pessoa {
  String nome;

  Pessoa(this.nome);

  @override
  String toString() {
    return {
      "Nome": nome,
    }.toString();
  }
}
