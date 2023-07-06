class ValorInvalidoException implements Exception {
  final String mensagem;

  ValorInvalidoException(this.mensagem);

  @override
  String toString() {
    return 'ValorInvalidoException: $mensagem';
  }
}
