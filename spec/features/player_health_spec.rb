require_relative 'feature_spec_helper.rb'

feature "Display player health" do
  let(:player_1_name) { "Simon" }
  let(:player_2_name) { "Steve" }

  scenario "Player 2's health is 100 at the start of the game" do
    sign_in_and_play(player_1_name: player_1_name, player_2_name: player_2_name)
    expect(page).to have_content("HP: 100")
  end

  context "Player 2 is attacked" do
    scenario "Player 2 is attacked and losses 10 health" do
      sign_in_and_play(
        player_1_name: player_1_name,
        player_2_name: player_2_name
      )
      click_button "attack"
      expect(page).to have_content("HP: 90")
    end
  end
end
