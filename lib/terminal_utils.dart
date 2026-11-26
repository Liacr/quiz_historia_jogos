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