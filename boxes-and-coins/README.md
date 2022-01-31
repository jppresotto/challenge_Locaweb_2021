# Caixas e moedas

Você recebeu uma tarefa extremamente maçante, mas, como uma boa pessoa
desenvolvedora que é, decidiu criar um código para te ajudar nesse trabalho.

A tarefa é a seguinte: receber uma quantidade de moedas e dividi-las igualmente
em caixas para, no final, saber quantas moedas temos numa caixa específica.

Por exemplo, temos cinco caixas e queremos distribuir 10 moedas:

> Colocamos uma moeda na caixa 1, uma moeda na caixa 2, uma moeda na caixa
> 3... até uma moeda na caixa 5. Em seguida, voltamos novamente para a caixa 1,
> em um ciclo, e fazemos o mesmo processo.

Assim, se ao final do programa perguntarmos quantas moedas estão na caixa 3
através do método `cycle_to_position`, a resposta será duas (2) moedas. E se
perguntarmos a quantidade na última caixa usando o método `cycle_to_last` a resposta
também será duas (2) moedas.

Em outro exemplo, são cinco caixas novamente, mas agora temos 13 moedas.

> Colocamos uma moeda na caixa 1, uma moeda na caixa 2... até a caixa 5.
> Voltamos para a caixa 1 e continuamos colocando até a caixa 5. Voltamos pela
> terceira vez para a caixa 1 e colocamos uma moeda, mais uma moeda na caixa 2
> e a última moeda na caixa 3.

Se, ao final, perguntarmos quantas moedas estão na caixa 3, a resposta será três (3)
moedas. Mas, se a mesma pergunta for feita sobre a última caixa, a resposta será duas
(2) moedas.

Agora que você sabe como dividir, vamos colocar em código?
