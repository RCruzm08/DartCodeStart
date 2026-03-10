void main() {
  var listaDeNumeros = [9, 5, 88, 24, 67, 90, 2, -7];
  var soma = listaDeNumeros.reduce((a, b) => a + b);
  var media = soma / listaDeNumeros.length;

  print('A média total é: $media');

  var maior = listaDeNumeros.reduce((a, b) => a > b ? a : b);

  print('O maior valor é: $maior');

  var menor = listaDeNumeros.reduce((a, b) => a < b ? a : b);

  print('O menor valor é: $menor');

  if (menor < 0) {
    print('O menor valor é negativo');
  } else if (menor > 2 && menor < 6) {
    print('O menor valor está entre 2 e 6');
  } else {
    print('O menor valor não atende nenhuma das condições');
  }
}
