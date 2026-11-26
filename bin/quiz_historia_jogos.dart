import 'package:quiz_historia_jogos/quiz_historia_jogos.dart';
import 'package:quiz_historia_jogos/terminal_utils.dart';

void main() {
  var jogarNovamente = true;

  while (jogarNovamente) {
    imprimirTitulo('QUIZ: A HISTÓRIA DOS JOGOS');
    print('Da Guerra dos Bits à era 3D e os bastidores da indústria.\n');

    final jogador = lerLinha('Qual é o seu nome? ');
    print('\nBem-vindo(a), $jogador! Prepare o controle, o quiz vai começar.');

    final perguntas = List<Map<String, Object>>.from(perguntasQuiz);
    perguntas.shuffle();

    var acertos = 0;
    final total = perguntas.length;

    for (var i = 0; i < total; i++) {
      final atual = perguntas[i];
      final alternativas = atual['alternativas'] as Map<String, String>;
      final correta = atual['correta'] as String;
      final explicacao = atual['explicacao'] as String;

      print('\n----------------------------------------');
      print('Pergunta ${i + 1} de $total');
      print(atual['pergunta']);

      alternativas.forEach((letra, texto) {
        print('  $letra) $texto');
      });

      final resposta = lerAlternativa();

      if (resposta == correta) {
        acertos++;
        imprimirAcerto('Acertou!');
      } else {
        imprimirErro(
            'Errou! A resposta certa era $correta) ${alternativas[correta]}.');
      }
      print('Curiosidade: $explicacao');
    }

    imprimirTitulo('RESULTADO FINAL');
    print('$jogador, você acertou $acertos de $total perguntas corretas.');

    if (acertos == total) {
      imprimirAcerto(
          'Platina conquistada! Você domina a história dos videogames!');
    } else if (acertos >= 4) {
      imprimirAcerto(
          'Mandou bem! Já conhece bastante dos bastidores dos games.');
    } else {
      imprimirAviso(
          'Game Over! Vale uma nova partida para desbloquear mais conquistas.');
    }

    jogarNovamente = lerConfirmacao('\nJogar de novo? (s/n): ');
  }

  print('\nObrigado por jogar! Até a próxima fase.');
}