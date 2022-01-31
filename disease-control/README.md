Central de Controle de Doenças
================================

Em uma pequena cidade, a prefeitura tentava fazer o controle de uma pandemia e
pediu para que fossem registrados todos os sintomas que cada morador apresenta.

Todos os dados foram agregados em um documento em que cada linha contém todos
os sintomas que uma pessoa apresentava e cada grupo de moradores de um imóvel
fica separado por uma linha em branco. Por exemplo:

```
      coriza, tosse, febre
      febre, coriza

      coriza
      coriza
      coriza

      febre
```

Na lista acima, há 3 grupos: o primeiro com duas pessoas, o segundo com
três, e o terceiro tem apenas uma pessoa.

Cientistas precisam analisar os dados e te pediram para escrever
um algoritmo que consiga procurar, em toda a lista, em quantos grupos todas as
pessoas possuem determinados sintomas.

Por exemplo, digamos que o sintoma alvo seja "coriza". Dada a lista acima,
no primeiro e no segundo grupos todas as pessoas apresentam o sintoma "coriza".
Somente no terceiro, "coriza" não é sintoma de todas as pessoas daquele grupo. 
Se o sintoma procurado fosse "febre", o primeiro e o terceiro grupo seriam 
contabilizados. Em ambos exemplos, o valor final retornado seria 2, já que dois 
grupos apresentam os sintomas procurados.

