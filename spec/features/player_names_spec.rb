feature "Player names" do
  scenario "Players fill in forms and submit them and see the names on screen" do
    visit('/')
    fill_in("player_1_name", with: "Steve")
    fill_in("player_2_name", with: "Amina")
    click_button("Submit")
    expect(page).to have_content "Player 1: Steve Player 2: Amina"
  end
end
