# Espalhamento cíclico

Considerando matrizes de dados com quantidade de linhas igual a
quantidade de colunas, cada célula pode estar em um de dois estados: ativo ('!')
ou inativo ('o'). Por exemplo:

```
[
 ['o', 'o', 'o'],
 ['o', '!', 'o'],
 ['!', 'o', '!']
]
```

Seguindo as regras de espalhamento:

- Se uma célula inativa 'o' tiver 3 ou mais células ativas adjacentes, ela muda
  seu estado para ativa '!'.
- Se uma célula ativa '!' tiver 4 ou mais células inativas adjacentes, ela muda
  seu estado para inativa 'o'.

A cada ciclo de espalhamento, cada célula sofre alteração conforme as regras
acima. A matriz do exemplo ficaria assim após **um ciclo** de espalhamento:

```
[
 ['o', 'o', 'o'],
 ['o', 'o', 'o'],
 ['!', '!', '!']
]
```

E, após um **segundo ciclo**, ficaria assim:

```
[
 ["o", "o", "o"],
 ["o", "!", "o"],
 ["!", "!", "!"]
]
```

Neste desafio você deve implementar o código que recebe uma **matriz inicial** e uma
**quantidade de ciclos** que devem ser aplicados. Ao final, o código deve retornar a
matriz modificada conforme as regras após aplicação dos ciclos de espalhamento.
