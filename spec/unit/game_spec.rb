require "./models/game.rb"

describe Game do
  let(:player_2){double :player_2, :hp => 100}
  let(:player_1){double :player_1}
  context "WHen created" do
    it "Accepts to players on creation" do
      Game.new(player_1, player_2)
    end
  end
  it "Should attack player 2 for 10 damage" do
    game = Game.new(player_1, player_2)
    expect(game.attack(player_2, 10)).to eq 90
  end

  it "Should attack player 2 for 20 damage" do
    game = Game.new(player_1, player_2)
    expect(game.attack(player_2, 20)).to eq 80
  end
end
