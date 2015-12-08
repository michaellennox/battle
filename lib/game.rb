class Game

  attr_reader :player1, :player2

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def attack_player1
    player1.attacked
  end

  def attack_player2
    player2.attacked
  end

  def player1_name
    player1.name
  end

  def player2_name
    player2.name
  end

  def player1_hp
    player1.hp
  end

  def player2_hp
    player2.hp
  end

end
