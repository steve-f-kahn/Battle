class Player
  attr_reader :name, :hp

  def initialize(name:, hp:)
    @name = name
    @hp = hp
  end

  def damage(amount)
    @hp -= amount
  end
end