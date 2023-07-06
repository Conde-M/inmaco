# Inmaco

Inmaco é um programa simples para calcular o Índice de Massa Corporal (IMC) com base no peso e altura fornecidos pelo usuário.

## Funcionalidades

- Calcula o IMC com base no peso e altura fornecidos.
- Classifica o IMC em categorias predefinidas.
- Permite a entrada do nome do usuário.
- Valida os valores de peso e altura para garantir que sejam maiores que zero.

## Instalação

Certifique-se de ter o Dart SDK instalado em sua máquina. Em seguida, siga as etapas abaixo para executar o programa:

1. Clone este repositório:

```
git clone https://github.com/Conde-M/inmaco.git
```

2. Navegue até o diretório do projeto:

```
cd inmaco
```

3. Execute o programa:

```
dart run
```

## Como usar

Ao executar o programa, você será solicitado a fornecer seu nome, peso e altura. Digite as informações solicitadas e o programa calculará o seu IMC e exibirá o resultado.

## Estrutura do projeto

- O código principal do programa está localizado em `lib/inmaco.dart`.
- A classe `Imc` é responsável por calcular o IMC e classificá-lo em categorias. Está localizada em `lib/class/imc.dart`.
- A classe `ConsoleUtils` fornece métodos auxiliares para interagir com a linha de comando. Está localizada em `lib/class/console_utils.dart`.
- A classe `ValorInvalidoException` é uma exceção personalizada para valores inválidos de peso e altura. Está localizada em `lib/exception/valor_invalido_exception.dart`.
