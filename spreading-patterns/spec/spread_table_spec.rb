require 'spec_helper'

describe SpreadTable do
  context '#cycle' do
    it '1: Verifica padrão de espalhamento em 3x3 após 1 ciclo' do
      table = [
               ['o', 'o', 'o'],
               ['o', '!', 'o'],
               ['!', 'o', '!']
              ]
      result_table = [
               ['o', 'o', 'o'],
               ['o', 'o', 'o'],
               ['!', '!', '!']
              ]
      cycles = 1

      expect(SpreadTable.new.cycle(table, cycles)).to eq result_table
    end

    it '2: Verifica padrão de espalhamento em 3x3 após 1 ciclo' do
      table = [
               ['o', '!', 'o'],
               ['o', 'o', 'o'],
               ['!', '!', '!']
              ]
      result_table = [
               ['o', 'o', 'o'],
               ['!', '!', '!'],
               ['!', '!', '!']
              ]
      cycles = 1

      expect(SpreadTable.new.cycle(table, cycles)).to eq result_table
    end

    it '3: Verifica padrão de espalhamento em 3x3 após 2 ciclos' do
      table = [
               ['o', '!', 'o'],
               ['o', 'o', 'o'],
               ['!', '!', '!']
              ]
      result_table = [
               ['o', '!', 'o'],
               ['!', '!', '!'],
               ['!', '!', '!']
              ]
      cycles = 2

      expect(SpreadTable.new.cycle(table, cycles)).to eq result_table
    end

    it '4: Verifica padrão de espalhamento em 5x5 após 3 ciclos' do
      table = [
               ['o', '!', 'o', 'o', '!'],
               ['o', 'o', 'o', '!', 'o'],
               ['!', '!', 'o', 'o', '!'],
               ['o', 'o', '!', 'o', '!'],
               ['!', '!', 'o', 'o', '!']
              ]
      result_table = [
               ["o", "o", "!", "!", "!"],
               ["!", "!", "!", "!", "!"],
               ["!", "o", "!", "!", "!"],
               ["!", "!", "!", "!", "!"],
               ["!", "!", "!", "!", "!"]
                     ]
      cycles = 3

      expect(SpreadTable.new.cycle(table, cycles)).to eq result_table
    end

    it '5: Verifica padrão de espalhamento em 10x10 após 5 ciclos' do
      table = [
               ['o', 'o', 'o', 'o', 'o', 'o', 'o', 'o', 'o', 'o'],
               ['o', 'o', 'o', 'o', 'o', 'o', 'o', 'o', 'o', 'o'],
               ['o', 'o', 'o', 'o', 'o', 'o', 'o', 'o', 'o', 'o'],
               ['o', 'o', 'o', '!', 'o', 'o', 'o', 'o', 'o', 'o'],
               ['o', 'o', 'o', 'o', '!', 'o', 'o', 'o', 'o', 'o'],
               ['!', 'o', 'o', 'o', 'o', 'o', 'o', 'o', 'o', 'o'],
               ['!', '!', '!', '!', 'o', 'o', '!', 'o', 'o', 'o'],
               ['!', '!', '!', '!', 'o', '!', '!', 'o', 'o', 'o'],
               ['o', 'o', '!', '!', 'o', '!', 'o', 'o', 'o', 'o'],
               ['o', 'o', '!', '!', 'o', 'o', 'o', 'o', 'o', 'o']
              ]
      result_table = [
               ["o", "o", "o", "o", "o", "o", "o", "o", "o", "o"],
               ["o", "o", "o", "o", "o", "o", "o", "o", "o", "o"],
               ["o", "o", "o", "o", "o", "o", "o", "o", "o", "o"],
               ["o", "!", "o", "o", "o", "o", "o", "o", "o", "o"],
               ["!", "!", "o", "!", "o", "o", "o", "o", "o", "o"],
               ["!", "!", "!", "!", "o", "o", "o", "o", "o", "o"],
               ["!", "!", "!", "!", "!", "!", "o", "o", "o", "o"],
               ["!", "!", "!", "!", "!", "!", "o", "o", "o", "o"],
               ["!", "!", "!", "!", "!", "!", "!", "o", "o", "o"],
               ["!", "!", "!", "!", "!", "!", "!", "o", "o", "o"]
                     ]
      cycles = 5

      expect(SpreadTable.new.cycle(table, cycles)).to eq result_table
    end
  end
end
