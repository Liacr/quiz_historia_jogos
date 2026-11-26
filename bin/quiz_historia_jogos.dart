import 'package:quiz_historia_jogos/quiz_historia_jogos.dart';
import 'package:quiz_historia_jogos/terminal_utils.dart';

void main() {
  print('QUIZ: A HISTÓRIA DOS JOGOS');
  print('Da Guerra dos Bits à era 3D e os bastidores da indústria.\n');

  final jogador = lerLinha('Qual é o seu nome? ');
  print('\nBem-vindo(a), $jogador! Prepare o controle, o quiz vai começar.');

  final total = perguntasQuiz.length;

  for (var i = 0; i < total; i++) {
    final atual = perguntasQuiz[i];
    final alternativas = atual['alternativas'] as Map<String, String>;

    print('\n----------------------------------------');
    print('Pergunta ${i + 1} de $total');
    print(atual['pergunta']);

    alternativas.forEach((letra, texto) {
      print('  $letra) $texto');
    });
  }
}