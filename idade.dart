import 'dart:io';

void main() {
  print('Informe sua data de nascimento (AAAA-MM-DD):');
  String? entrada = stdin.readLineSync();

  DateTime dataNascimento = DateTime.parse(entrada!);
  DateTime agora = DateTime.now();

  int idade = agora.year - dataNascimento.year;

  if (agora.month < dataNascimento.month ||
      (agora.month == dataNascimento.month && agora.day < dataNascimento.day)) {
    idade--;
  }

  if (idade >= 18) {
    print('🥳 Parabéns você já pode ser preso!!!');
  } else {
    print('Você ainda é menor de idade');
  }
}
