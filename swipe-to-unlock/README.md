# Deslize para desbloquear

Em smartphones e tablets costumava ser comum podermos desbloquear os aparelhos
usando uma senha que consistia num padrão de desenho feito deslizando o dedo sobre
botões na tela. Por exemplo:

<img
src="https://campuscode-site.s3.sa-east-1.amazonaws.com/codesaga/swipe_acerto.png",
width=400, height=auto />
<img
src="https://campuscode-site.s3.sa-east-1.amazonaws.com/codesaga/swipe_erro.png",
width=400, height=auto />

Neste desafio a sequência de teclas obedece o padrão de uma senha de deslizar para
desbloquear. Vamos usar como referência um teclado numerado de 1 a 9, com três
teclas em cada linha:

```
1 | 2 | 3
4 | 5 | 6
7 | 8 | 9
```

As regras para validação são:
 - não é permitido apertar a mesma tecla duas vezes, portanto 1 - 2 - 1 - 4 é uma sequência inválida;
 - as teclas não podem ser "puladas", então 1 - 2 - 8 é inválida, mas 1 - 2 - 6 é válida;
 - nem sempre números seguidos criam uma sequência válida. Por exemplo: 3 - 4 - 5 é inválida, mas 4 - 5 - 6 é válida;
 - teclas na diagonal podem ser usadas, desde que não haja nenhum "pulo", como em 1 - 5 - 8, que é válido.

Neste desafio dois métodos devem ser implementados: (`swipe`) para verificar se uma
determinada sequência de teclas é válida; e (`count_invalid`) para contar em uma lista de
sequências quantas delas são inválidas.

o método `swipe` recebe uma *string* e responde se é um padrão válido ou
inválido.

O método `count_invalid` recebe uma lista de padrões (um por linha) e retorna quantos são
inválidos.


