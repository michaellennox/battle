require 'game'

describe Game do

  subject(:game) { described_class.new }
  let(:player1) { double :player }

  describe '#attack' do
    it 'should call attacked on a player' do
      expect(player1).to receive(:attacked)
      game.attack(player1)
    end
  end


end
