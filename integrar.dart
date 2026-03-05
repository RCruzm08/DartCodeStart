import 'dart:io';

void main() {
  List<Map<String, dynamic>> estoque = [];

  while (true) {
    print('Sistema de Estoque');
    print('1- Adicionar produto ao estoque');
    print('2- Listar os produtos do estoque');
    print('3- Sair');

    stdout.write("Escolha uma opção: ");
    String? opcao = stdin.readLineSync();

    if (opcao == '1') {
      adicionarProduto(estoque);
    } else if (opcao == '2') {
      listarProdutos(estoque);
    } else if (opcao == '3') {
      print('Saindo do sistema de estoque.');
      break;
    } else {
      print('Opção inválida. Tente novamente.');
    }
  }
}

void adicionarProduto(List<Map<String, dynamic>> estoque) {
  stdout.write("Digite o nome do produto: ");
  String? nome = stdin.readLineSync();

  stdout.write("Digite a quantidade do produto: ");
  int quantidade = int.parse(stdin.readLineSync()!);

  stdout.write("Digite o preço do produto: ");
  double preco = double.parse(stdin.readLineSync()!);

  estoque.add({'nome': nome, 'quantidade': quantidade, 'preco': preco});

  print('Produto adicionado ao estoque.');
}

void listarProdutos(List<Map<String, dynamic>> estoque) {
  if (estoque.isEmpty) {
    print('O estoque está vazio.');
  } else {
    print('\nProdutos no estoque:');

    for (Map<String, dynamic> produto in estoque) {
      print('Nome: ${produto['nome']}');
      print('Quantidade: ${produto['quantidade']}');
      print('Preço: R\$ ${produto['preco']}');
      print('--------------------');
    }
  }
}
