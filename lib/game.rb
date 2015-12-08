require 'forwardable'

class Game
  extend Forwardable

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def_delegator :@player1, :attacked, :attack1
  def_delegator :@player2, :attacked, :attack2

  def_delegator :@player1, :name, :name1
  def_delegator :@player2, :name, :name2

  def_delegator :@player1, :hp, :hp1
  def_delegator :@player2, :hp, :hp2

end
