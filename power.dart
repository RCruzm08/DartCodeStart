import 'dart:io';

void main() {
  print('==============================');
  print('Bem-vindo ao planeta terra do universo 7');
  print('Diga seu nome, guerreiro:');

  String? nome = stdin.readLineSync();

  print('==============================');
  print('Guerreiro $nome, informe seu poder (0 a 10):');

  int poder = int.parse(stdin.readLineSync()!);

  String rank;

  if (poder == 0) {
    rank = 'Humano';
  } else if (poder <= 2) {
    rank = 'Híbrido';
  } else if (poder <= 4) {
    rank = 'Namek';
  } else if (poder <= 6) {
    rank = 'Android';
  } else if (poder <= 8) {
    rank = 'Saiyajin';
  } else if (poder <= 10) {
    rank = 'Deus da Destruição';
  } else {
    rank = 'Anjo';
  }

  print('==============================');
  print('⚔️ Herói: $nome');
  print('💪 Poder: $poder');
  print('🏆 Rank: $rank');
  print('==============================');
}
