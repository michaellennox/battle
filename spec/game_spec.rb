require 'game'

describe Game do

  subject(:game) { described_class.new(player1, player2) }
  let(:player1) { double(:player, name: "Michael", hp: 100) }
  let(:player2) { double(:player, name: "Ed", hp: 98) }

  describe '#attack1' do
    it 'should call attacked on a player1' do
      expect(player1).to receive(:attacked)
      game.attack1
    end
  end

  describe '#attack2' do
    it 'should call attacked on a player2' do
      expect(player2).to receive(:attacked)
      game.attack2
    end
  end

  describe '#name1' do
    it 'should return the name of player1' do
      expect(game.name1).to eq("Michael")
    end
  end

  describe '#name2' do
    it 'should return the name of player2' do
      expect(game.name2).to eq("Ed")
    end
  end

  describe '#hp1' do
    it 'should return player1\'s current HP' do
      expect(game.hp1).to eq 100
    end
  end

  describe '#hp2' do
    it 'should return player2\'s current HP' do
      expect(game.hp2).to eq 98
    end
  end

end
