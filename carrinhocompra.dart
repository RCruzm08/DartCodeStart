import 'dart:io';

void main() {
  List<List<double>> carrinho = [];
  double totalGeral = 0;

  print("Quantas listas criar?");
  int quantidadeListas = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < quantidadeListas; i++) {
    print("Quantos produtos deseja adicionar ao carrinho ${i + 1}?");
    int quantidadeProdutos = int.parse(stdin.readLineSync()!);
    List<double> lista = [];

    for (int j = 0; j < quantidadeProdutos; j++) {
      print("Digite a quantidade do produto ${j + 1}:");
      double quantidadeProdutos = double.parse(stdin.readLineSync()!);
      print('Digite o preço do produto ${j + 1}:');
      double precoProduto = double.parse(stdin.readLineSync()!);
      double total = quantidadeProdutos * precoProduto;
      lista.add(total);
      totalGeral+=total;
    }
    carrinho.add(lista);
  }
  print('\nValores digitados:');
  for (int i = 0; i < carrinho.length; i++) {
    for (double valor in carrinho[i]) {
      print('R\$ ${valor.toStringAsFixed(2)}');
    }
  }
  print('\nTotal da compra : R\$ ${(totalGeral.toStringAsFixed(2))}');
}
