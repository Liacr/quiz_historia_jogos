# Quiz: A História dos Jogos 🕹️

Quiz de perguntas e respostas sobre a história dos videogames, rodando no terminal e feito em Dart.

## Integrante

Lianna Cavalcante | Desenvolvimento Mobile

## Sobre o quiz

O tema escolhido foi a **história dos jogos**: da "Guerra dos Bits" entre SNES e Mega Drive, passando pelo Crash de 1983 e pela chegada dos gráficos 3D, até os bastidores da indústria moderna.

Exemplo de pergunta:

> Qual jogo de 1996 virou referência na transição dos jogos de plataforma 2D para mundos 3D exploráveis com controle livre de câmera?
> A) Super Mario 64  B) Pac-Man  C) Tetris  D) Sonic the Hedgehog

## Como jogar

Dentro da pasta do projeto, execute:

```bash
dart run
```

O jogo pede o seu nome, embaralha as perguntas e conta os acertos. No final, mostra o resultado e pergunta se você quer jogar de novo.

## Funcionalidades

- 6 perguntas com 4 alternativas cada, misturando perguntas fáceis, médias e difíceis
- Aceita resposta em maiúsculas ou minúsculas
- Repete a pergunta se a resposta for inválida ou vazia
- Mostra a alternativa correta quando o jogador erra
- Mensagem final que muda conforme o desempenho
- Extras: perguntas embaralhadas e opção de jogar novamente

## Estrutura do projeto

- `bin/quiz_historia_jogos.dart`: o jogo (fluxo principal, repetição com `for` e condicionais)
- `lib/quiz_historia_jogos.dart`: a lista de perguntas
- `lib/terminal_utils.dart`: funções de leitura (`stdin.readLineSync()`), validação das respostas e mensagens coloridas

## Como a IA ajudou

- **Como ajudou:** a IA corrigiu um erro de lógica no código e criou as perguntas do quiz (com as alternativas, a resposta certa e uma curiosidade para cada uma).
- **O que adaptei:** fiquei com 6 perguntas misturando fáceis, médias e difíceis, e usei a contagem de acertos como pontuação, como pede o desafio.
- **Como verifiquei:** rodei o jogo com `dart run` várias vezes, testando respostas certas e erradas, letras maiúsculas e minúsculas, Enter sem resposta, letras inválidas e se a pontuação final bate com os acertos.