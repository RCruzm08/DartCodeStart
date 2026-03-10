import 'dart:io';

void main() {
  print('Informe o valor da compra');
  double preco = double.parse(stdin.readLineSync()!);

  print('Informe a porcentagem do desconto de sua compra');
  double desconto = double.parse(stdin.readLineSync()!);

  var vDesconto = preco * (desconto / 100);
  var vFinal = preco - vDesconto;

  print('Você economizou um total de: R\$ ${vDesconto.toStringAsFixed(2)}');
  print('Valor final da compra: R\$ ${vFinal.toStringAsFixed(2)}');

  print(
    'Poderia avaliar o nosso simples sistema? De 0 a 10 o que achou de nosso atendimento?',
  );
  double avaliar = double.parse(stdin.readLineSync()!);

  if (avaliar >= 7) {
    print('Ficamos gratos de termos resolvido seu problema, volte sempre e tenha um ótimo dia',);
  } else {
    print('Pode nos informar o que erramos em seu atendimento para futuramente melhorarmos?',);
    print('Digite seu feedback ou digite 0 para encerrar o sistema.');

    String? feedback = '';

    while (true) {
      feedback = stdin.readLineSync();

      if (feedback == '0') {
        print('Sistema encerrado. Tenha um ótimo dia!');
        break;
      }

      if (feedback == null || feedback.trim().isEmpty) {
        print('Você não digitou nada. Escreva um feedback ou digite 0 para sair.',);
      } else {
        print('Muito obrigado pelo seu feedback!');
        print('Esperamos poder atendê-lo melhor no futuro. Tenha um ótimo dia!',);
        break;
      }
    }
  }
}
