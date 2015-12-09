class Player

  attr_reader :name, :hp

  def initialize(name)
    @name = name
    @hp = 100
  end

  def damage
    @hp -= 14
  end

end
