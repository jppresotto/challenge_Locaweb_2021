class PagamentoCredito < Pagamento
    attr_accessor :quantidade, :juros, :produto
    
    def initialize(quantidade: 0, juros: 0, produto: Produto.new)
        @quantidade = quantidade
        @juros = juros
        @produto = produto
    end
  end