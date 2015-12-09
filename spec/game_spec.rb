require 'game'

describe Game do

  subject(:game) { described_class.new(player1, player2) }
  let(:player1) { double :player1 }
  let(:player2) { double :player2, receive_damage: nil }

  describe '#attck' do
    it 'responds to attck' do
      expect(game).to respond_to(:attack).with(1).argument
    end

    it 'strikes other player and removes HP' do
      expect(player2).to receive(:receive_damage)
      game.attack(player2)
    end
  end

end
