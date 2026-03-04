import 'dart:io';

void main(){
    print('Informe a sua idade');
  int idade = int.parse(stdin.readLineSync()!);

  if (idade >= 18) {
    print('Usuário maior de idade');
  } else if (idade >= 13 && idade < 18) {
    print('Usuário juvenil');
  } else {
    print('Usuário menor de idade');
  }
}
    
    