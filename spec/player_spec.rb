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

  describe '#attacked' do
    it 'should reduce HP by 20' do
      expect{player.attacked}.to change{player.hp}.by (-20)
    end
  end

end
