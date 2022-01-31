require 'spec_helper'

describe SwipePad do
  context '#swipe' do
    it '1: Encontra padrão válido' do
      pattern = '1 - 2 - 3'

      expect(SwipePad.new.swipe(pattern)).to eq 'Válido'
    end

    it '2: Encontra padrão válido' do
      pattern = '1 - 4 - 7'

      expect(SwipePad.new.swipe(pattern)).to eq 'Válido'
    end

    it '3: Encontra padrão válido' do
      pattern = '1 - 5 - 9'

      expect(SwipePad.new.swipe(pattern)).to eq 'Válido'
    end

    it '4: Encontra padrão inválido' do
      pattern = '1 - 4 - 7 - 4'

      expect(SwipePad.new.swipe(pattern)).to eq 'Inválido'
    end

    it '5: Encontra padrão inválido' do
      pattern = '1 - 4 - 1 - 4 - 4'

      expect(SwipePad.new.swipe(pattern)).to eq 'Inválido'
    end

    it '6: Encontra padrão inválido' do
      pattern = '1 - 2 - 7'

      expect(SwipePad.new.swipe(pattern)).to eq 'Inválido'
    end

    it '7: Encontra padrão inválido' do
      pattern = '1 - 2 - 8'

      expect(SwipePad.new.swipe(pattern)).to eq 'Inválido'
    end

    it '8: Encontra padrão válido' do
      pattern = '7 - 5 - 2 - 1'

      expect(SwipePad.new.swipe(pattern)).to eq 'Válido'
    end

    it '9: Encontra padrão válido' do
      pattern = '9 - 8 - 5 - 2 - 1'

      expect(SwipePad.new.swipe(pattern)).to eq 'Válido'
    end

    it '10: Encontra padrão válido' do
      pattern = '9 - 8 - 7 - 5 - 3 - 2 - 1 - 4'

      expect(SwipePad.new.swipe(pattern)).to eq 'Válido'
    end
  end

  context '#count_attempts' do
    it '11: Conta tentativa inválida' do
      attempts = <<~ATTEMPTS
        2 - 4 - 7 - 1
      ATTEMPTS

      expect(SwipePad.new.count_invalid(attempts)).to eq 1
    end

    it '12: Conta 1 tentativa inválida da lista' do
      attempts = <<~ATTEMPTS
        1 - 4 - 5 - 8 - 9 - 6
        2 - 4 - 7 - 1
      ATTEMPTS

      expect(SwipePad.new.count_invalid(attempts)).to eq 1
    end

    it '13: Conta 7 tentativas inválidas da lista' do
      attempts = <<~ATTEMPTS
        5 - 4 - 5 - 2 - 3 - 9 - 1
        1 - 2 - 3 - 5 - 6 - 7
        6 - 5 - 2 - 1 - 4 - 8
        7 - 8 - 5 - 4 - 2 - 6
        9 - 4 - 3 - 1 - 8 - 7 - 2
        3 - 2 - 1 - 7 - 5
        7 - 4 - 5 - 9 - 6 - 3 - 2 - 1
        5 - 2 - 3 - 6 - 8 - 7 - 4 - 1
        3 - 4 - 1 - 7 - 8 - 9 - 2
        1 - 1 - 1 - 1 - 1
        2 - 2 - 2 - 1 - 1
      ATTEMPTS

      expect(SwipePad.new.count_invalid(attempts)).to eq 7
    end
  end
end
