feature "Display player health" do
  scenario "Player 2's health is 100 at the start of the game" do
    visit '/'
    fill_in "player_1_name", with: "Steve"
    fill_in "player_2_name", with: "Simon"
    click_button "Submit"
    expect(page).to have_content("HP: 100")
  end
end
