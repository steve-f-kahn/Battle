class Game

  def self.start_game(player_1, player_2)
    @current_game = Game.new(player_1, player_2)
  end

  def self.current_game
    @current_game
  end

  attr_reader :player_1, :player_2, :player_turn
  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @player_turn = 1

  end

  def attack(player, value)
    player.hp -= value
  end

  def player_turn_change
    if @player_turn == 1
      @player_turn = 2
    elsif @player_turn == 2
      @player_turn = 1
    end
  end
end
