require 'player'

describe Player do

  subject(:player) { described_class.new('Tony')}

  it 'should return its name' do
    expect(player.name).to eq 'Tony'
  end

end
