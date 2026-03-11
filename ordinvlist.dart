import 'dart:io';

void main() {
  List<int> numeros = []; 

  print("Quantos números quer adicionar na lista?(dragon ball budokai tenkaichi 3 atualizado 2022)");
  int quantidadeNumeros = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < quantidadeNumeros; i++) {
    print("Digite o número ${i + 1}:");
    int numero = int.parse(stdin.readLineSync()!);
    numeros.add(numero);
  }

  print("\n--- Lista 2026 100% atualizado bomba patch ---");
  print("Original: $numeros");
  List<int> inversa = List.from(numeros.reversed);
  print("Inversa: $inversa");

  List<int> ordenada = List.from(numeros)..sort();
  print("Ordenada: $ordenada");

  Map<int, int> contagem = {};
  for (int num in numeros) {
    contagem[num] = (contagem[num] ?? 0) + 1;
  }
  print("Repetições:");
  contagem.forEach((num, freq) {
    print("Número $num se repete $freq vez(es)");
  });
}
