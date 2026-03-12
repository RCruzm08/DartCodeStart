import 'dart:io';

void main() {
  String verificacao(int numero) {
    if (numero >= 10) {
      return "número com mais de 1 dígito";
    } else if (numero >= 0 && numero < 10) {
      return "número de um dígito";
    } else {
      return "número negativo";
    }
  }

  List<int> numeros = [];

  print('Quantos números deseja inserir?');
  int quantidade = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < quantidade; i++) {
    print('Digite um número');
    int numero = int.parse(stdin.readLineSync()!);
    numeros.add(numero);
  }

  print('\nResultado');
  for (int numero in numeros) {
    String resultado = verificacao(numero);
    print('Número $numero = $resultado');
  }
}
