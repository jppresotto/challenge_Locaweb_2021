# Números saltitantes

Para este desafio considere arrays de tamanhos variados contendo números inteiros.
O objetivo é começar no primeiro elemento e ir pulando de elemento em elemento até
chegar no último. Para facilitar, ao invés de passar por todos os elementos,
é possível pular mais de uma casa, dependendo do número do elemento. Por exemplo,
se o valor do elemento for 1, só pode pular para a casa seguinte, mas se o valor do
elemento for 3, pode pular de 1 até 3 casas. Ou seja, o valor que está na casa representa
o número máximo de elementos que podem ser pulados de uma só vez a partir daquela posição.

Você deve escrever o código que recebe essa lista de números e retorna a
menor sequência de pulos que podem ser dados, começando no primeiro elemento e
chegando no elemento final.

Por exemplo, dada a lista `[3, 1, 4, 1, 1, 5]`, deve ser retornado:

```
'3 - 4 - 5'
```

A sequência `3 - 4 - 1 - 1 - 5` também chega no final, mas contém mais pulos do que `3 - 4 - 5`.

Outro exemplo:

```
lista: [3, 2, 4, 1, 5, 1]

Retorno: '3 - 4 - 1'
```

Note que o primeiro e o último elementos sempre devem ser retornados na sequência final.
