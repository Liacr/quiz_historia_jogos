import 'dart:io';

const _reset = '\x1B[0m';
const _verde = '\x1B[32m';
const _vermelho = '\x1B[31m';
const _ciano = '\x1B[36m';
const _amarelo = '\x1B[33m';

void imprimirTitulo(String titulo) {
  print('\n$_ciano========================================$_reset');
  print('$_ciano  $titulo$_reset');
  print('$_ciano========================================$_reset');
}

void imprimirAcerto(String mensagem) {
  print('$_verde$mensagem$_reset');
}

void imprimirErro(String mensagem) {
  print('$_vermelho$mensagem$_reset');
}

void imprimirAviso(String mensagem) {
  print('$_amarelo$mensagem$_reset');
}

String lerLinha(String mensagem) {
  while (true) {
    stdout.write(mensagem);
    final entrada = stdin.readLineSync();

    if (entrada == null) {
      imprimirAviso('\nEntrada encerrada.');
      return '';
    }

    final limpa = entrada.trim();
    if (limpa.isNotEmpty) {
      return limpa;
    }

    imprimirAviso('Você não digitou nada. Tente novamente!');
  }
}

String lerAlternativa() {
  const validas = {'A', 'B', 'C', 'D'};

  while (true) {
    final resposta = lerLinha('Sua resposta (A, B, C ou D): ').toUpperCase();
    if (validas.contains(resposta)) {
      return resposta;
    }
    imprimirAviso('Opção inválida! Digite apenas A, B, C ou D.');
  }
}

bool lerConfirmacao(String mensagem) {
  while (true) {
    final resposta = lerLinha(mensagem).toLowerCase();
    if (resposta == 's' || resposta == 'sim') return true;
    if (resposta == 'n' || resposta == 'nao' || resposta == 'não') return false;
    imprimirAviso('Digite "s" para sim ou "n" para não.');
  }
}