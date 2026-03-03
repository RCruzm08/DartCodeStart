import 'dart:io';

void main(){
          print('Informe seu peso');
          double peso= double.parse(stdin.readLineSync()!);
          print ('Informe sua altura(A altura deve ser colocado em vez de com , utilize o .)');
          double altura = double.parse(stdin.readLineSync()!);
          print ('Informe seu nome');
          String nome = stdin.readLineSync()!;
          var imc = peso / (altura * altura);
          print ('Prazer $nome, seu imc é:${imc.toStringAsFixed(2)}');     
}