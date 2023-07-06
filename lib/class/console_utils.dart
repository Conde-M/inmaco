import 'dart:convert';
import 'dart:io';

import 'package:inmaco/exception/valor_invalido_exception.dart';

class ConsoleUtils {
  static String lerString({String texto = ""}) {
    String value = "";
    if (texto.isNotEmpty) print(texto);
    try {
      value = stdin.readLineSync(encoding: utf8)!;
      if (value.isEmpty) {
        return throw ValorInvalidoException(
            "Por favor, digite um valor válido.");
      }
    } catch (e) {
      print(e.toString());
      exit(0);
    }
    return value;
  }

  static double lerDouble({String texto = ""}) {
    double value = 0;
    try {
      value = double.parse(lerString(texto: texto));
    } catch (e) {
      print(e.toString());
      exit(0);
    }
    return value;
  }
}
