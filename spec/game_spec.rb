require 'game'

describe Game do
subject(:game) { described_class.new(player_1, player_2) }
let(:player_1) { double(:player, name: 'Player 1', hp: 100) }
let(:player_2) { double(:player, name: 'Player 2', hp: 100) }

  it 'Should be able to show name of Player 1' do
    expect(game.p1_name).to eq 'Player 1'
  end

  it 'Should be able to show name of Player 2' do
    expect(game.p2_name).to eq 'Player 2'
  end

  it 'Show that Player 1 starts with 100 HP' do
    expect(game.p1_hp).to eq 100
  end

  it 'Show that Player 2 starts with 100 HP' do
    expect(game.p2_hp).to eq 100
  end

  describe '#attack' do

    it 'Should call damage on Player 1' do
      expect(player_1).to receive(:damage)
      game.attacked
    end

    it 'Should call damage on Player 2' do
      expect(player_2).to receive(:damage)
      game.change_turn
      game.attacked
    end

  end

  describe '#change_turn' do

    it 'Should initialize on Player 1\'s turn' do
      expect(game.turn).to eq player_1
    end

    it 'After a turn it indicates that it\'s Player 2\'s turn' do
      game.change_turn
      expect(game.turn).to eq player_2
    end
  end

end
