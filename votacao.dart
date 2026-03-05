import 'dart:io';

void main() {
  Map<String, int> candidatos = {};
  bool sistemaAtivo = true;

  while (sistemaAtivo) {
    print("\n=== SISTEMA DE VOTAÇÃO (100% REAL ATUALIZADO2026SEMVIRUS)===");
    print("1 - Cadastrar candidato");
    print("2 - Votar");
    print("3 - Finalizar votação");

    stdout.write("Escolha uma opção: ");
    int opcao = int.parse(stdin.readLineSync()!);

    if (opcao == 1) {
      stdout.write("Digite o nome do candidato: ");
      String nome = stdin.readLineSync()!;

      if (candidatos.containsKey(nome)) {
        print("Candidato já cadastrado.");
      } else {
        candidatos[nome] = 0;
        print("Candidato $nome cadastrado com sucesso!");
      }
    } else if (opcao == 2) {
      if (candidatos.isEmpty) {
        print("Nenhum candidato cadastrado.");
        continue;
      }

      print("\n=== LISTA DE CANDIDATOS ===");

      List<String> nomes = candidatos.keys.toList();

      for (int i = 0; i < nomes.length; i++) {
        print("${i + 1} - ${nomes[i]}");
      }

      stdout.write("Escolha o número do candidato: ");
      int voto = int.parse(stdin.readLineSync()!);

      if (voto >= 1 && voto <= nomes.length) {
        String escolhido = nomes[voto - 1];
        candidatos[escolhido] = candidatos[escolhido]! + 1;
        print("Voto registrado para $escolhido");
      } else {
        print("Opção inválida.");
      }
    } else if (opcao == 3) {
      sistemaAtivo = false;
    } else {
      print("Opção inválida.");
    }
  }

  print("\n=== RESULTADO FINAL ===");

  if (candidatos.isEmpty) {
    print("Nenhum candidato participou.");
    return;
  }

  int totalVotos = candidatos.values.reduce((a, b) => a + b);

  String vencedor = "";
  int votosVencedor = 0;
  int segundoLugar = 0;

  candidatos.forEach((nome, votos) {
    print("$nome: $votos votos");

    if (votos > votosVencedor) {
      segundoLugar = votosVencedor;
      votosVencedor = votos;
      vencedor = nome;
    } else if (votos > segundoLugar) {
      segundoLugar = votos;
    }
  });

  double margem = 0;

  if (totalVotos > 0) {
    margem = ((votosVencedor - segundoLugar) / totalVotos) * 100;
  }

  print("\nCandidato eleito: $vencedor");
  print("Margem de vitória: ${margem.toStringAsFixed(2)}%");
}