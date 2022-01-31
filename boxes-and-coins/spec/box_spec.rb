require 'spec_helper'

describe Box do
  context '#cycle_to_position' do
    it '1: recebe uma série de moedas e caixas e retorna o valor da caixa 3' do
      coin_number = 10
      box_number = 5
      position_to_evaluate = 3
      expect(Box.new.cycle_to_position(coin_number, box_number, position_to_evaluate)).to eq(2)
    end

    it '2: recebe uma série de moedas e caixas e retorna o valor da caixa 4' do
      coin_number = 8
      box_number = 5
      position_to_evaluate = 4
      expect(Box.new.cycle_to_position(coin_number, box_number, position_to_evaluate)).to eq(1)
    end

    it '3: recebe uma série de moedas e caixas e retorna o valor da caixa 1' do
      expect(Box.new.cycle_to_position(5, 5, 1)).to eq(1)
    end

    it '4: recebe uma série de moedas e caixas e retorna o valor da caixa 5' do
      expect(Box.new.cycle_to_position(10, 5, 5)).to eq(2)
    end

    it '5: recebe uma série de moedas e caixas e retorna o valor da caixa 5' do
      expect(Box.new.cycle_to_position(3, 5, 5)).to eq(0)
    end

    it '6: recebe uma série de moedas e caixas e retorna o valor da caixa 3' do
      expect(Box.new.cycle_to_position(50, 6, 3)).to eq(8)
    end

    it '7: recebe uma série de moedas e caixas e retorna o valor da caixa 1000' do
      expect(Box.new.cycle_to_position(84278, 1934, 1000)).to eq(44)
    end

    it '8: recebe uma série de moedas e caixas e retorna o valor da caixa 1230' do
      expect(Box.new.cycle_to_position(1_000_000_000, 1434, 1230)).to eq(697350)
    end
  end

  context '#cycle_to_last' do
    it '1: recebe uma série de moedas e caixas e retorna o valor da última caixa' do
      coin_number = 10
      box_number = 5
      expect(Box.new.cycle_to_last(coin_number, box_number)).to eq(2)
    end

    it '2: recebe uma série de moedas e caixas e retorna o valor da última caixa' do
      coin_number = 8
      box_number = 5
      expect(Box.new.cycle_to_last(coin_number, box_number)).to eq(2)
    end

    it '3: recebe uma série de moedas e caixas e retorna o valor da última caixa' do
      coin_number = 11
      box_number = 5
      expect(Box.new.cycle_to_last(coin_number, box_number)).to eq(3)
    end
  end
end
