# Corrida de Pulo

Em um jogo um tanto incomum, vai ser disputada uma corrida de pulo num tabuleiro. Só que
cada pessoa começa numa posição diferente (que é tirada na sorte) e só pode pular um
número X de casas de cada vez.

Nesse desafio você recebe uma coleção de objetos `Player` com a posição inicial
já definida e quantidade de casas que devem ser puladas por turno.

Queremos descobrir quantos turnos são necessários até os jogadores estarem na mesma casa.

Exemplo:

```
O Player 1 começa na 0, pula pra 3, pula pra 6, pula pra 9, pula pra 12.
O Player 2 começa na 4, pula pra 6, pula pra 8, pula pra 10, pula pra 12.
```

<img
src="https://campuscode-site.s3.sa-east-1.amazonaws.com/codesaga/CorridaPulo_TRILHA.png",
width=400, height=auto />

Nesse exemplo, os jogadores se encontram no quarto turno, portanto, o retorno esperado
deve ser `4`. Se eles não puderem se encontrar em até 100 turnos, deve ser retornado `false`.

