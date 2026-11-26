import 'package:quiz_historia_jogos/terminal_utils.dart';

void main() {
  print('QUIZ: A HISTÓRIA DOS JOGOS');
  print('Da Guerra dos Bits à era 3D e os bastidores da indústria.\n');

  final jogador = lerLinha('Qual é o seu nome? ');
  print('\nBem-vindo(a), $jogador! Prepare o controle, o quiz vai começar.');
}