require 'player'

describe Player do

  subject(:player) { described_class.new('Tony')}

  it 'should return its name' do
    expect(player.name).to eq 'Tony'
  end

  it 'reduces players hp' do
    expect{player.receive_damage}.to change{player.hp}.by(-10)
  end

end
