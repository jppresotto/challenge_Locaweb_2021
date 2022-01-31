require 'spec_helper'

describe JumpingNumbers do
  context '#jump' do
    it '1: Recebe lista e retorna sequência de pulos 3 - 4 - 5' do
      list = [3, 1, 4, 1, 1, 5]

      expect(JumpingNumbers.new.jump(list)).to eq '3 - 4 - 5'
    end

    it '2: Recebe lista e retorna sequência de pulos 3 - 4 - 1' do
      list = [3, 2, 4, 1, 5, 1]

      expect(JumpingNumbers.new.jump(list)).to eq '3 - 4 - 1'
    end

    it '3: Recebe lista e retorna sequência de pulos 7 - 5 - 6' do
      list = [7, 3, 2, 1, 5, 1, 1, 4, 2, 6]

      expect(JumpingNumbers.new.jump(list)).to eq '7 - 5 - 6'
    end

    it '4: Recebe lista e retorna sequência de pulos 3 - 3 - 5 - 1' do
      list = [3, 1, 1, 3, 5, 2, 1, 4, 2, 1]

      expect(JumpingNumbers.new.jump(list)).to eq '3 - 3 - 5 - 1'
    end

    it '5: Recebe lista e retorna sequência de pulos 3 - 2 - 5 - 1' do
      list = [3, 2, 2, 2, 5, 5, 1, 4, 2, 1]

      expect(JumpingNumbers.new.jump(list)).to eq '3 - 2 - 5 - 1'
    end

    it '6: Recebe lista e retorna sequência de pulos 7 - 6 - 9 - 8 - 1' do
      list = [7, 1, 2, 2, 6, 2, 1, 1, 1, 9, 3, 4, 2, 1, 1, 1, 2, 8, 1, 3, 2, 1]

      expect(JumpingNumbers.new.jump(list)).to eq '7 - 6 - 9 - 8 - 1'
    end
  end
end
