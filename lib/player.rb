class Player

  attr_reader :name, :hp

  def initialize(name)
    @name = name
    @hp = 60
  end

  # def attack(player)
  #   player.receive_damage
  # end

  def receive_damage
    @hp -= 10
  end

  def hp_as_percent
    (@hp / 60.0) * 100
  end

end
