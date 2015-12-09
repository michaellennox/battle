class Game

  attr_reader :player1, :player2, :current

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current = player1
  end

  def attack(player)
    player.receive_damage
  end

  def player_name(player)
    player.name
  end

  def player_health(player)
    player.hp
  end

  def switch
    @current == @player1 ? @current = @player2 : @current = @player1
  end

end
