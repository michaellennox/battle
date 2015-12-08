require 'player'

describe Player do

  subject(:player) { described_class.new('Ed') }

  describe '#name' do
    it 'should return the players name' do
      expect(player.name).to eq 'Ed'
    end
  end

end
