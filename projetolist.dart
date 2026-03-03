import 'dart:io';

void main() {
  List<List<int>> numeros = [];

  print("Quantas listas criar?");
  int quantidadeListas = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < quantidadeListas; i++) {
    print("Quantos números quer adicionar na lista ${i + 1}?");
    int quantidadeNumeros = int.parse(stdin.readLineSync()!);

    List<int> lista = [];

    for (int j = 0; j < quantidadeNumeros; j++) {
      print("Digite o número ${j + 1}:");
      int numero = int.parse(stdin.readLineSync()!);
      lista.add(numero);
    }

    numeros.add(lista);
  }

  print("\nNúmeros digitados:");
  for (int indice = 0; indice < numeros.length; indice++) {
    for (int item in numeros[indice]) {
      print(item);
    }
  }
}