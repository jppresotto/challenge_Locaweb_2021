require 'spec_helper'

describe JumpRace do
  it '1: recebe jogadores e retorna quantidade de pulos' do
    player_1 = Player.new(initial_location: 1, jump_distance: 3)
    player_2 = Player.new(initial_location: 4, jump_distance: 2)
    expect(JumpRace.new.jump([player_1, player_2])).to eq(3)
  end

  it '2: recebe jogadores e retorna quantidade de pulos' do
    player_1 = Player.new(initial_location: 4, jump_distance: 2)
    player_2 = Player.new(initial_location: 1, jump_distance: 3)
    expect(JumpRace.new.jump([player_1, player_2])).to eq(3)
  end

  it '3: recebe jogadores e retorna quantidade de pulos' do
    player_1 = Player.new(initial_location: 13, jump_distance: 4)
    player_2 = Player.new(initial_location: 22, jump_distance: 3)
    player_3 = Player.new(initial_location: 40, jump_distance: 1)
    expect(JumpRace.new.jump([player_1, player_2, player_3])).to eq(9)
  end

  it '4: recebe jogadores e retorna quantidade de pulos' do
    player_1 = Player.new(initial_location: 13, jump_distance: 4)
    player_2 = Player.new(initial_location: 22, jump_distance: 4)
    player_3 = Player.new(initial_location: 40, jump_distance: 4)
    expect(JumpRace.new.jump([player_1, player_2, player_3])).to eq(false)
  end

  it '5: recebe jogadores e retorna quantidade de pulos' do
    player_1 = Player.new(initial_location: 36, jump_distance: 4)
    player_2 = Player.new(initial_location: 238, jump_distance: 2)
    player_3 = Player.new(initial_location: 137, jump_distance: 3)
    expect(JumpRace.new.jump([player_1, player_2, player_3])).to eq(false)
  end

  it '6: recebe jogadores e retorna quantidade de pulos' do
    player_1 = Player.new(initial_location: 1, jump_distance: 3)
    player_2 = Player.new(initial_location: 4, jump_distance: 2)
    player_3 = Player.new(initial_location: 1, jump_distance: 3)
    player_4 = Player.new(initial_location: 4, jump_distance: 2)
    expect(JumpRace.new.jump([player_1, player_2, player_3, player_4])).to eq(3)
  end
end
