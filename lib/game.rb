require 'forwardable'

class Game

  extend Forwardable

  attr_reader :turn

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @turn = player_1
  end

  def change_turn
    turn == player_1 ? @turn = player_2 : @turn = player_1
  end

  def other_turn
    @turn == player_1 ? player_2 : player_1
  end

  def_delegator :@player_1, :name, :p1_name
  def_delegator :@player_2, :name, :p2_name

  def_delegator :@player_1, :hp, :p1_hp
  def_delegator :@player_2, :hp, :p2_hp

  def_delegator :@turn, :damage, :attacked

  private



  attr_reader :player_1, :player_2

end
