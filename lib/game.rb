require 'forwardable'

class Game
  extend Forwardable

  attr_reader :active_player, :player1, :player2

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @active_player = player1
  end

  def_delegator :@player1, :attacked, :attack1
  def_delegator :@player2, :attacked, :attack2

  def_delegator :@player1, :name, :name1
  def_delegator :@player2, :name, :name2

  def_delegator :@player1, :hp, :hp1
  def_delegator :@player2, :hp, :hp2

  def switch_turn
    @active_player == player1 ? @active_player = player2 : @active_player = player1
  end

end
