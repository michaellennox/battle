require 'game'

describe Game do

  subject(:game) { described_class.new(player1, player2) }
  let(:player1) { double(:player, name: "Michael", hp: 100) }
  let(:player2) { double(:player) }

  describe '#attack' do
    it 'should call attacked on a player' do
      expect(player1).to receive(:attacked)
      game.attack(player1)
    end
  end

  describe '#player1' do
    it 'should return player1' do
      expect(game.player1).to eq(player1)
    end
  end

  describe '#player2' do
    it 'should return player2' do
      expect(game.player2).to eq(player2)
    end
  end

  describe '#player_name' do
    it 'should return the name of player' do
      expect(game.player_name(player1)).to eq("Michael")
    end
  end

  describe '#player_hp' do
    it 'should return the player\'s current HP' do
      expect(game.player_hp(player1)).to eq 100
    end
  end


end
