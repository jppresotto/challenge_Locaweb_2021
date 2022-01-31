class ProdutoLivro < Produto
    attr_accessor :nome, :preco, :estoque, :autor, :genero, :paginas
    
    def initialize(nome: 'Sem nome', preco: 0,estoque: 0, autor: 'Sem nome', genero: 'Sem nome', paginas: 0)
      @nome = nome
      @preco = preco
      @estoque = estoque
      @autor = autor
      @genero = genero
      @paginas = paginas
    end
  end