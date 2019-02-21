require_relative 'spec_helper.rb'

feature "Player names" do
  let(:player_1_name) { "Simon" }
  let(:player_2_name) { "Steve" }

  before(:each) do
    sign_in_and_play(player_1_name: player_1_name, player_2_name: player_2_name)
  end

  context "Given players have signed in with their names" do
    scenario "Player 1 name is displayed" do
      expect(page).to have_content "Player 1: #{player_1_name}"
    end

    scenario "Player 2 name is displayed" do
      expect(page).to have_content "Player 2: #{player_2_name}"
    end
  end

  scenario "has discripted header" do
    visit('/')
    expect(page).to have_content('Battle')
  end
end
