require 'player'

describe Player do
  subject(:player) {described_class.new('Player 1')}

  it 'Should return Player name' do
    expect(player.name).to eq 'Player 1'
  end

  it 'Should initialize with 100 hp' do
    expect(player.hp).to eq 100
  end

  describe '#damage' do

    it 'Should reduce player\'s hp by 14 when damaged' do
      expect{player.damage}.to change{player.hp}.by (-14)
    end

  end

end
