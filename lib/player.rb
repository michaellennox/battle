class Player

  attr_reader :name, :hp

  def initialize(name)
    @name = name
    @hp = 100
  end

  def attacked
    @hp -= 20
  end

end
