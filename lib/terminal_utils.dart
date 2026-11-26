import 'dart:io';

String lerLinha(String mensagem) {
  while (true) {
    stdout.write(mensagem);
    final entrada = stdin.readLineSync();

    if (entrada == null) {
      print('\nEntrada encerrada.');
      return '';
    }

    final limpa = entrada.trim();
    if (limpa.isNotEmpty) {
      return limpa;
    }

    print('Você não digitou nada. Tente novamente!');
  }
}

String lerAlternativa() {
  const validas = {'A', 'B', 'C', 'D'};

  while (true) {
    final resposta = lerLinha('Sua resposta (A, B, C ou D): ').toUpperCase();
    if (validas.contains(resposta)) {
      return resposta;
    }
    print('Opção inválida! Digite apenas A, B, C ou D.');
  }
}