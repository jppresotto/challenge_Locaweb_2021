class PagamentoBoleto < Pagamento
    attr_accessor :produto, :quantidade, :valor

    def initialize(quantidade:0, produto:Produto.new, valor:0)
        @quantidade = quantidade
        @produto = produto
        @valor= valor
    end
end