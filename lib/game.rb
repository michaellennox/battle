class Game

  attr_reader :player1, :player2

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def attack(player)
    player.attacked
  end

  def player_name(player)
    player.name
  end

  def player_hp(player)
    player.hp
  end

end
