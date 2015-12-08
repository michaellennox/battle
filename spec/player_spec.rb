require 'player'

describe Player do

  subject(:player) { described_class.new('Ed') }

  it 'should initialize with HP equal to 100' do
    expect(player.hp).to eq 100
  end
  
  describe '#name' do
    it 'should return the players name' do
      expect(player.name).to eq 'Ed'
    end
  end

end
