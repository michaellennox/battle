require 'game'

describe Game do

  subject(:game) { described_class.new(player1, player2) }
  let(:player1) { double(:player, name: "Michael", hp: 100) }
  let(:player2) { double(:player, name: "Ed", hp: 98) }

  describe '#attack_player1' do
    it 'should call attacked on a player1' do
      expect(player1).to receive(:attacked)
      game.attack_player1
    end
  end

  describe '#attack_player2' do
    it 'should call attacked on a player2' do
      expect(player2).to receive(:attacked)
      game.attack_player2
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

  describe '#player1_name' do
    it 'should return the name of player1' do
      expect(game.player1_name).to eq("Michael")
    end
  end

  describe '#player2_name' do
    it 'should return the name of player2' do
      expect(game.player2_name).to eq("Ed")
    end
  end

  describe '#player1_hp' do
    it 'should return player1\'s current HP' do
      expect(game.player1_hp).to eq 100
    end
  end

  describe '#player2_hp' do
    it 'should return player2\'s current HP' do
      expect(game.player2_hp).to eq 98
    end
  end

end
