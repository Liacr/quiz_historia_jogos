import 'package:quiz_historia_jogos/quiz_historia_jogos.dart';
import 'package:test/test.dart';

void main() {
  test('Deve ter pelo menos 5 perguntas cadastradas', () {
    expect(perguntasQuiz.length, greaterThanOrEqualTo(5));
  });
}