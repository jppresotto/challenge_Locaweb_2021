require 'spec_helper'

describe 'BookEditor' do
  context '#count_pages' do
    it '1: Conta páginas viradas para chegar no alvo: 2 para frente' do
      book = '| C | A | M | P | U | S |'
      actions = <<~ACTIONS
      ACTIONS
      targets = ['A', 'U']

      expect(BookEditor.new.count_pages(book, actions, targets)).to eq '2 para frente'
    end

    it '2: Conta páginas viradas para chegar no alvo: 2 para trás' do
      book = '| C | A | M | P | U | S |'
      actions = <<~ACTIONS
      ACTIONS
      targets = ['U', 'A']

      expect(BookEditor.new.count_pages(book, actions, targets)).to eq '2 para trás'
    end

    it '3: Conta páginas viradas para chegar no alvo após ações: 1 para frente' do
      book = '| C | A | M | P | U | S |'
      actions = <<~ACTIONS
        >>
      ACTIONS
      targets = ['A', 'U']

      expect(BookEditor.new.count_pages(book, actions, targets)).to eq '1 para frente'
    end

    it '4: Conta páginas viradas para chegar no alvo após ações: 1 para frente' do
      book = '| C | A | M | P | U | S |'
      actions = <<~ACTIONS
        <<
      ACTIONS
      targets = ['A', 'U']

      expect(BookEditor.new.count_pages(book, actions, targets)).to eq '1 para frente'
    end

    it '5: Conta páginas viradas para chegar no alvo após ações: 1 para frente' do
      book = '| C | A | M | P | U | S |'
      actions = <<~ACTIONS
        3<>4
      ACTIONS
      targets = ['A', 'U']

      expect(BookEditor.new.count_pages(book, actions, targets)).to eq '1 para frente'
    end

    it '6: Conta páginas viradas para chegar no alvo que repete no livro: 1 para trás' do
      book = '| C | A | M | P | U | S | C | O | D | E |'
      actions = <<~ACTIONS
      ACTIONS
      targets = ['C', 'S']

      expect(BookEditor.new.count_pages(book, actions, targets)).to eq '1 para trás'
    end

    it '7: Conta páginas viradas para chegar no alvo após ações: 3 para trás' do
      book = '| C | A | M | P | U | S | C | O | D | E |'
      actions = <<~ACTIONS
        4<>5
        <<
        0<>7
        >>
      ACTIONS
      targets = ['A', 'P']

      expect(BookEditor.new.count_pages(book, actions, targets)).to eq '3 para trás'
    end

    it '8: Conta páginas viradas para chegar no alvo após ações: 5 para frente' do
      book = '| O | N | E | R | I | N | G | T | O | R | U | L | E | T | H | E | M | A | L | L |'
      actions = <<~ACTIONS
        8<>2
        >>
        3<>9
        >>
        4<>19
        1<>13
        >>
        >>
      ACTIONS
      targets = ['N', 'H']

      expect(BookEditor.new.count_pages(book, actions, targets)).to eq '5 para frente'
    end
  end
end
