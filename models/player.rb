class Player
  attr_accessor :hp
  attr_reader :name

  def initialize(name:, hp:)
    @name = name
    @hp = hp
  end

end
