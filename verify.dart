import 'dart:io';

void main (){
  String verificarN(int numero){
    if (numero>=10){
      return "número alto";
    }else if (numero >= 0 && numero <= 10){
      return "número baixo";
    }else {
      return "número negativo";
    }
  }
  print('Digite um número');

  int numero = int.parse(stdin.readLineSync()!);
  
  String resultado = verificarN(numero);
  print (resultado);
}