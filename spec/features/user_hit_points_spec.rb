

  # As Player 1,
  # So I can see how close I am to winning
  # I want to see Player 2's Hit Points

feature 'Hit points' do
  scenario 'viewing hit points' do
    visit('/')
    fill_in :player_1_name, with: 'Ed'
    fill_in :player_2_name, with: 'Michael'
    click_button 'Submit'
    expect(page).to have_content 'Michael HP: 100'
  end
end
