Flip Book
=======================

Neste desafio é necessário pensar em um livro em que cada página contém uma letra.
Por exemplo, um livro com 8 páginas, poderia ter a seguinte distribuição de letras:

```
Páginas | 0 e 1 | 2 e 3 | 4 e 5 | 6 e 7 |
Letras  | A | B | C | D | E | F | G | H |
```

Quando abrimos o livro em qualquer ponto, ele te mostra duas páginas, então se
abrirmos na dupla de páginas onde aparece a letra B (0 e 1) e queremos
chegar na letra F (4 e 5), precisamos virar as páginas duas vezes para frente.
E se quisermos ir de G para A, precisamos virar as páginas três vezes para trás.

O autor do livro pediu para fazer alterações nos livros: trocar
páginas de lugar, jogando páginas do fim para o começo ou do começo para o fim!
Cada alteração pedida foi registrada por meio de instruções:

```
3<>5 => troca a posição das letras nas páginas indicadas
>>   => rotaciona todas as letras uma página para a direita
<<   => rotaciona todas as letras uma página para a esquerda
```

No exemplo acima, a sequência de ações resultaria em:

```
3<>5 => | A | B | C | F | E | D | G | H |

>>   => | H | A | B | C | F | E | D | G |

<<   => | A | B | C | F | E | D | G | H |
```

Agora, você vai implementar o código que diz qual é a menor quantidade de
viradas de página que é preciso para sair de uma letra e chegar em outra dentro
do livro, depois de todas as alterações serem aplicadas nele.

No exemplo acima, considerando as letras alvo `['B', 'F']`, deve ser retornado:

```
1 para frente
```

Já que, após as alterações, a letra B está na dupla de páginas 0-1 e F
está na dupla 2-3.

É importante lembrar que em um livro as letras podem repetir em diferentes
páginas e deve ser calculada a menor quantidade de viradas de página que devem ser
dadas.

