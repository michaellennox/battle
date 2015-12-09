require 'game'

describe Game do

  subject(:game) { described_class.new(player1, player2) }
  let(:player1) { double :player1, name: 'Ed', hp: 60}
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

    it 'should give the player name' do
      expect(game.player_name(player1)).to eq 'Ed'
    end

    it 'should give player HP' do
      expect(game.player_health(player1)).to eq 60
    end

    it 'should give the current player' do
      expect(game.current).to eq player1
    end
end
