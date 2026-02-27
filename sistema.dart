import 'dart:io';

void main() {
  print("Qual a nota1?");
  String? input = stdin.readLineSync();
  if (input != null) {
    int nota1 = int.parse(input);
    print('Qual a nota2?');
    String? input2 = stdin.readLineSync();
    if (input2 != null) {
      int nota2 = int.parse(input2);
      print("Qual a nota3?");
      String? input3 = stdin.readLineSync();
      if (input3 != null) {
        int nota3 = int.parse(input3);
        print("Qual a nota4?");
        String? input4 = stdin.readLineSync();
        if (input4 != null) {
          int nota4 = int.parse(input4);
          var soma = nota1 + nota2 + nota3 + nota4;
          var media = soma / 4;
          for (int i = 0; i < 5; i++) {
            print(media);
            if (media >= 60) {
              print("Aprovado");
            } else {
              print('Reprovado');
            }
          }
        }
      }
    }
  }
}
