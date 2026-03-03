import 'dart:io';

void main() {
  print('Informe o valor do produto:');
  double precoOriginal = double.parse(stdin.readLineSync()!);
  print('Informe a porcentagem de desconto:');
  double porcentagemDesconto = double.parse(stdin.readLineSync()!);
  
  var valorDesconto = precoOriginal * (porcentagemDesconto / 100);

  var precoFinal = precoOriginal - valorDesconto;

  print('Preço Original: R\$ $precoOriginal');
  print('Desconto: R\$ $valorDesconto');
  print('Preço Final: R\$ $precoFinal');
}