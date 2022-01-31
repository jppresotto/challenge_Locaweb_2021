require 'spec_helper'

describe 'PagamentoCredito' do
  it '1: deveria criar um objeto da classe PagamentoCredito' do
    quantidade = 300
    produto = Produto.new(preco: 1, estoque: 300, nome: 'Caneta')
    juros = 10
    pagamento = PagamentoCredito.new(quantidade: quantidade, juros: juros, produto: produto)
    pagamento.calcular_valor

    expect(pagamento).to be_a(Pagamento)
    expect(pagamento.valor).to eq 300
    expect(pagamento.juros).to eq 10
  end

  it '2: deveria atualizar o valor com juros' do
    quantidade = 300
    produto = Produto.new(preco: 1, estoque: 300, nome: 'Caneta')
    juros = 10
    pagamento = PagamentoCredito.new(quantidade: quantidade, juros: juros, produto: produto)
    pagamento.calcular_valor
    pagamento.atualizar_valor

    expect(pagamento.valor).to eq 330
  end

  it '3: deveria aplicar desconto no valor' do
    quantidade = 300
    produto = Produto.new(preco: 1, estoque: 300, nome: 'Caneta')
    juros = 10
    pagamento = PagamentoCredito.new(quantidade: quantidade, juros: juros, produto: produto)
    pagamento.calcular_valor
    pagamento.aplicar_desconto(10)

    expect(pagamento.valor).to eq 270
  end
end
